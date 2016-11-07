/*
 ~ Copyright (c) 2016 Ibrahim R. Nkambo for Underscore Ltd
 ~
 ~
 ~ Licensed under the Apache License, Version 2.0 (the "License");
 ~ you may not use this file except in compliance with the License.
 ~ You may obtain a copy of the License at
 ~
 ~      http://www.apache.org/licenses/LICENSE-2.0
 ~
 ~ Unless required by applicable law or agreed to in writing, software
 ~ distributed under the License is distributed on an "AS IS" BASIS,
 ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 ~ See the License for the specific language governing permissions and
 ~ limitations under the License.
 */

CREATE TABLE Animal_Location
(
  Location_ID INT NOT NULL,
  Location_Name VARCHAR(255) NOT NULL,
  Location_Description VARCHAR(255) NOT NULL,
  PRIMARY KEY (Location_ID)
);

CREATE TABLE Animal
(
  Animal_ID INT NOT NULL,
  Date_Of_Birth DATE NOT NULL,
  Date_Of_Weaning DATE,
  Breed_Of_Animal VARCHAR(255) NOT NULL,
  Animal_Number VARCHAR(255) NOT NULL,
  Location_ID INT NOT NULL,
  PRIMARY KEY (Animal_ID),
  FOREIGN KEY (Location_ID) REFERENCES Animal_Location(Location_ID),
  UNIQUE (Animal_Number)
);

CREATE TABLE Attendant
(
  Attendant_ID INT NOT NULL,
  Full_Names VARCHAR(255) NOT NULL,
  Date_Joined DATE NOT NULL,
  Residence VARCHAR(255) NOT NULL,
  Contact INT NOT NULL,
  Next_Of_Kin_Names VARCHAR(255) NOT NULL,
  Next_Of_Kin_Contact INT NOT NULL,
  Primary_Role VARCHAR(255) NOT NULL,
  Secondary_Role VARCHAR(255),
  Qualifications VARCHAR(255) NOT NULL,
  Additional_Training VARCHAR(255),
  Current_Salary FLOAT NOT NULL,
  PRIMARY KEY (Attendant_ID)
);

CREATE TABLE Animal_Feed_Consumption
(
  Date_Of_Consumption DATE NOT NULL,
  Feed_Composition VARCHAR(255) NOT NULL,
  Meal_Weight FLOAT NOT NULL,
  Water_Consumed FLOAT NOT NULL,
  AF_Consumption_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (AF_Consumption_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Animal_Transfer_Schedule
(
  Date_Of_Transfer DATE NOT NULL,
  New_Location_ID INT NOT NULL,
  Purpose_Of_Transfer VARCHAR(255) NOT NULL,
  AT_Schedule_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  PRIMARY KEY (AT_Schedule_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID)
);

CREATE TABLE Animal_Weight_Tracker
(
  Date_Of_Weighin DATE NOT NULL,
  Current_Weight INT NOT NULL,
  AW_Tracker_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  PRIMARY KEY (AW_Tracker_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID)
);

CREATE TABLE Animal_Death_Tracker
(
  Date_Of_Death DATE NOT NULL,
  Weight_At_Death FLOAT NOT NULL,
  Cause_Of_Death VARCHAR(255) NOT NULL,
  AD_Tracker_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  PRIMARY KEY (AD_Tracker_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID)
);

CREATE TABLE Supplier
(
  Supplier_ID INT NOT NULL,
  Supplier_Name VARCHAR(255) NOT NULL,
  Item_Supplied VARCHAR(255) NOT NULL,
  Supplier_Contact INT NOT NULL,
  Supplier_Address VARCHAR(255) NOT NULL,
  PRIMARY KEY (Supplier_ID)
);

CREATE TABLE Feeds_Requisiton
(
  Feed_Requisition_ID INT NOT NULL,
  Date_Of_Requisition DATE NOT NULL,
  Item_Requisitioned VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (Feed_Requisition_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Feeds_Receipt_Attendant
(
  Feed_Receipt_Att_ID INT NOT NULL,
  Item_Received VARCHAR(255) NOT NULL,
  Date_Of_Receipt DATE NOT NULL,
  Quantity INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (Feed_Receipt_Att_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Feeds_Return
(
  Feeds_Return_ID INT NOT NULL,
  Date_Of_Return DATE NOT NULL,
  Item_Returned VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  Reason_Of_Return VARCHAR(255) NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (Feeds_Return_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Feeds_Purchase_Order
(
  Feed_Purchase_Order_ID INT NOT NULL,
  Date_Of_Purchase_Order DATE NOT NULL,
  Item_Purchased VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  Supplier_ID INT NOT NULL,
  PRIMARY KEY (Feed_Purchase_Order_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Pig_Sales
(
  Customer_Name VARCHAR(255) NOT NULL,
  Date_Of_Sale DATE NOT NULL,
  Price_Of_Animal FLOAT NOT NULL,
  Quantity INT NOT NULL,
  Pig_Sales_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  PRIMARY KEY (Pig_Sales_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID)
);

CREATE TABLE Expenditure
(
  Expenditure_ID INT NOT NULL,
  Expenditure_Type VARCHAR(255) NOT NULL,
  Expenditure_Description VARCHAR(255) NOT NULL,
  PRIMARY KEY (Expenditure_ID)
);

CREATE TABLE Expenditure_Voucher
(
  Voucher_ID INT NOT NULL,
  Date_Of_Sale DATE NOT NULL,
  Total_Amount_Paid FLOAT NOT NULL,
  Expenditure_ID INT NOT NULL,
  Supplier_ID INT,
  PRIMARY KEY (Voucher_ID),
  FOREIGN KEY (Expenditure_ID) REFERENCES Expenditure(Expenditure_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

CREATE TABLE Attendant_Activity_Log
(
  Date_Of_Activity DATE NOT NULL,
  Description_Of_Activity VARCHAR(255) NOT NULL,
  Verified_By VARCHAR(255) NOT NULL,
  Att_Activity_Log_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (Att_Activity_Log_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Chicken_Storage
(
  Cage_ID INT NOT NULL,
  Cage_Number VARCHAR(255) NOT NULL,
  Cage_Description VARCHAR(255) NOT NULL,
  PRIMARY KEY (Cage_ID)
);

CREATE TABLE Chicken_Population_Tracker
(
  Date_Of_Census DATE NOT NULL,
  Num_Of_Transfers_In INT,
  Num_Of_Transfers_Out INT,
  Num_Of_Deaths INT,
  Num_Of_Chicken INT NOT NULL,
  CP_Tracker_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (CP_Tracker_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Egg_Collection_Tracker
(
  Date_Of_Collection DATE NOT NULL,
  Num_Of_Laying_Hens INT NOT NULL,
  Num_Of_Cocks INT NOT NULL,
  Num_Of_Eggs_Collected INT NOT NULL,
  Num_Of_Damaged_Eggs INT,
  Verified_By VARCHAR(255) NOT NULL,
  EC_Tracker_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (EC_Tracker_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Chicken_Feed_Consumption
(
  Date_Of_Consumption DATE NOT NULL,
  Feed_Composition VARCHAR(255) NOT NULL,
  Total_Weight FLOAT NOT NULL,
  Water_Provided FLOAT NOT NULL,
  CF_Consumption_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (CF_Consumption_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Chicken_Transfer_Tracker
(
  Date_Of_Transfer DATE NOT NULL,
  Num_Of_Hens_Transfered INT NOT NULL,
  Num_Of_Cocks_Transfered INT NOT NULL,
  Receiving_Cage_ID INT NOT NULL,
  Receiving_Attendant_ID INT NOT NULL,
  CT_Tracker_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (CT_Tracker_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Chicken_Medication_Tracker
(
  Date_Of_Medication DATE NOT NULL,
  Num_Of_Hens INT,
  Num_Of_Cocks INT,
  Type_Of_Medication VARCHAR(255) NOT NULL,
  Dosage VARCHAR(255) NOT NULL,
  Purpose VARCHAR(255) NOT NULL,
  Administered_By VARCHAR(255) NOT NULL,
  CM_Tracker_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (CM_Tracker_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Chicken_Sales
(
  Date_Of_Sale DATE NOT NULL,
  Num_Of_Hens INT,
  Num_Of_Cocks INT,
  Customer_Name VARCHAR(255) NOT NULL,
  Total_Amount FLOAT NOT NULL,
  Chicken_Sales_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (Chicken_Sales_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Egg_Dispatch
(
  Date_Of_Dispatch DATE NOT NULL,
  Num_Of_Trays INT NOT NULL,
  Verified_By VARCHAR(255) NOT NULL,
  Egg_Dispatch_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  Cage_ID INT NOT NULL,
  PRIMARY KEY (Egg_Dispatch_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID),
  FOREIGN KEY (Cage_ID) REFERENCES Chicken_Storage(Cage_ID)
);

CREATE TABLE Animal_Medication_Tracker
(
  Date_Of_Medication DATE NOT NULL,
  Dosage VARCHAR(255) NOT NULL,
  Purpose VARCHAR(255) NOT NULL,
  Type_Of_Medication VARCHAR(255) NOT NULL,
  Administered_By VARCHAR(255) NOT NULL,
  AM_Tracker_ID INT NOT NULL,
  Animal_ID INT NOT NULL,
  Attendant_ID INT NOT NULL,
  PRIMARY KEY (AM_Tracker_ID),
  FOREIGN KEY (Animal_ID) REFERENCES Animal(Animal_ID),
  FOREIGN KEY (Attendant_ID) REFERENCES Attendant(Attendant_ID)
);

CREATE TABLE Feeds_Receipt_Supplier
(
  Feed_Receipt_Sup_ID INT NOT NULL,
  Date_Of_Receipt DATE NOT NULL,
  Item_Received VARCHAR(255) NOT NULL,
  Quantity INT NOT NULL,
  Supplier_ID INT NOT NULL,
  PRIMARY KEY (Feed_Receipt_Sup_ID),
  FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);
