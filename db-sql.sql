
--
-- Database: `db_tm4`
--

CREATE DATABASE IF NOT EXISTS `db_tm4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_tm4`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tm4`
--

DROP TABLE IF EXISTS `tbl_tm4`;
CREATE TABLE `tbl_tm4` (
  `ID` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_tm4`
--
ALTER TABLE `tbl_tm4`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_tm4`
--
ALTER TABLE `tbl_tm4`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
