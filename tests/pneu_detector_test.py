import pytest
import unittest
import pneu_detector as pneu

parent_dir = "C:\\Users\\salim\\Desktop\\VALDOM\\Transverse\\project\\"
pneumonia_model_path = parent_dir+ 'ml_model/finalModel/pneu_detect_cnn_model.h5'
image_path= "../dataprep/chest_xray/test/"
Model= pneu.PneumoniaDetector(pneumonia_model_path)

class TestModelPredictions(unittest.TestCase):
    def setup_class(self):
        self.normal_image_file = image_path+"NORMAL/IM-0001-0001.jpeg"
        self.infected_image_file = image_path+"PNEUMONIA/person1_virus_6.jpeg"

    def test_predict_normal(self):
        has_pneumonia, pred_confidence = Model.predict(self.normal_image_file)
        self.assertEqual(has_pneumonia, False)
        self.assertGreater(pred_confidence, 0.5)

    def test_predict_pneumonia(self):
        has_pneumonia, pred_confidence = Model.predict(self.infected_image_file)
        self.assertEqual(has_pneumonia, True)
        self.assertGreater(pred_confidence, 0.5)

    def test_check_pneumonia_normal(self):
        prediction_dict, filename= Model.check_pneumonia(self.normal_image_file)
        expected_filename= "pred= " + str(prediction_dict["pred"]) + ";confidence= " + str(prediction_dict["proba"])
        self.assertEqual(prediction_dict["pred"], "Normal Chest")
        self.assertEqual(prediction_dict["proba"]>0.5, True)
        self.assertEqual(filename,expected_filename)

    def test_check_pneumonia_infected(self):
        prediction_dict, filename = Model.check_pneumonia(self.infected_image_file)
        expected_filename = "pred= " + str(prediction_dict["pred"]) + ";confidence= " + str(prediction_dict["proba"])
        self.assertEqual(prediction_dict["pred"], "Pneumonia detected")
        self.assertEqual(prediction_dict["proba"] > 0.5, True)
        self.assertEqual(filename, expected_filename)


#if __name__ == '__main__':
 #   unittest.main()
