
--
-- Database: `db_team4`
--

CREATE DATABASE IF NOT EXISTS `db_team4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_team4`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team4`
--

DROP TABLE IF EXISTS `tbl_team4`;
CREATE TABLE `tbl_team4` (
  `ID` int(11) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_team4`
--
ALTER TABLE `tbl_team4`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_team4`
--
ALTER TABLE `tbl_team4`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
