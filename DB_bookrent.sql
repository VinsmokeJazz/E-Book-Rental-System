-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 06:31 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookrent`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`adminid`, `name`, `phone`, `address`, `email`, `username`, `password`) VALUES
(3, 'BookRental', 9874563211, 'Mangalore', 'Bookrent@gmail.com', 'adminbookrent', 'ebookrental');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `bookid` int(10) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `bookimage` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `course` varchar(100) NOT NULL,
  `bookdesc` varchar(1000) NOT NULL,
  `book_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`bookid`, `bookname`, `bookimage`, `author`, `price`, `stock`, `category`, `course`, `bookdesc`, `book_keywords`) VALUES
(114, 'Java 3rd Edition', 'java3rdedition.jpg', 'Edison', 600, 18, '009', '000006', 'Java is powerful language and book is available at cheap cost', 'Java J2ee '),
(115, 'C 3rd Edition', 'C.jpg', 'Sanjay', 500, 45, '007', '000007', 'Simple and fundamental learning for all computer science students', 'C Computer Language'),
(116, 'C++ 2nd edition', 'C++.jpg', 'Steve Hokzner', 600, 10, '004', '000008', 'C++ is an object-oriented language which helps in building real world application.', 'C++ object oriented '),
(117, 'Finance 5th Edition', 'finance.jpg', 'Edison', 550, 6, '004', '000010', 'Finance book include calculation and study of arrangement of assets and liabilities .', 'finance accounts'),
(119, 'Management', 'management.jpg', 'Ram Prakash', 480, 3, '009', '000009', 'This book includes study of managing of sales of the company.', 'Management sales '),
(120, 'Grid and Cloud Computing', 'mca_grid-cloud-computing.jpg', 'R. Ruhin Kouser', 420, 15, '009', '000006', 'Latest syllabus of Anna University, Chennai', 'Grid Cloud Computing'),
(121, 'Discrete Mathematics', 'mca_discretemaths.jpg', 'Swapan Kumar', 250, 11, '009', '000006', 'All kinds of mathematics problems like sets, probabilities etc and also solutions included.', 'Discrete Mathematics Maths'),
(122, 'Business Statistics', 'mba_stats.jpg', 'P.C. Tulsian', 300, 10, '009', '000009', 'This book includes all types of graphical representation problems and population related problems.', 'Business Statistics'),
(123, 'Marketing Research', 'mba_markettingresearch.jpg', 'Rajendra Nargundkar', 470, 9, '009', '000009', 'This book includes study and research of all the strategies of marketing and working .', 'Marketing Research'),
(124, 'Accounting and Finance', 'mba_accountingFinance.jpg', 'Michael P. Griffin', 600, 2, '009', '000009', 'This book includes deep understanding of the functions of accounting and also helps in learning how to read a financial statement.', 'Accounting Finanace'),
(125, 'Human Resource Development', 'mba_hr.JPG', 'Marius Meyer', 550, 3, '009', '000009', 'This book includes study of how to develop leadership skills, how to motivate and train the employees etc.', 'Human Resource Development HR'),
(126, 'Company Law', 'law.jpg', 'Company Law Corporate', 450, 19, '004', '000011', 'This book includes study of corporate law in the business field.', 'Company Law Corporate'),
(127, 'PHP Complete Reference', 'php.jpg', 'Steven Hokzner', 650, 33, '004', '000008', 'This book gives complete reference of how to design, debug and deploy rich web-applications and also gives the study of HTML, XML, Ajax and database contents.', 'php complete reference web application'),
(128, 'Biology', 'biology.jpg', 'Solomon Martin', 250, 5, '012', '000012', 'This book contains all the details about of human structure etc.', 'biology science'),
(129, 'J2ee', 'businessethics.jpg', 'abc', 500, 10, '009', '000006', 'Server side', 'Java J2ee '),
(131, 'Arts', 'businesslaws.jpg', 'ABC', 800, 2, '004', '000005', 'Arts', 'business law arts');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `categoryid` int(3) UNSIGNED ZEROFILL NOT NULL,
  `categoryname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`categoryid`, `categoryname`) VALUES
(004, 'Under Graduate'),
(007, 'PU Studies'),
(009, 'Post Graduate'),
(012, 'SSLC (10th)'),
(016, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tblchallan`
--

CREATE TABLE `tblchallan` (
  `challanid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `return_date` date NOT NULL,
  `time_slot` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `paid_status` tinyint(1) NOT NULL,
  `return_status` tinyint(1) NOT NULL,
  `fine_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblchallan`
--

INSERT INTO `tblchallan` (`challanid`, `userid`, `totalamount`, `appointment_date`, `return_date`, `time_slot`, `start_date`, `end_date`, `paid_status`, `return_status`, `fine_status`) VALUES
(1262, 8, 1000, '2018-02-01', '2019-09-17', '11 A.M - 12 P.M', '2018-04-05', '2018-04-12', 1, 0, 1460),
(1263, 5, 1070, '2018-04-09', '2019-09-16', '3 P.M - 4 P.M', '2018-04-05', '2018-04-12', 1, 0, 1240),
(1265, 7, 550, '2018-04-12', '2018-07-12', '12 P.M - 1 P.M', '2018-04-05', '2018-04-12', 0, 0, 0),
(1269, 7, 600, '2018-05-21', '2019-09-17', '11 A.M - 12 P.M', '2018-05-19', '2018-05-26', 1, 0, 1120),
(1270, 11, 900, '2018-05-23', '2019-09-12', '11 A.M - 12 P.M', '2018-05-20', '2018-05-27', 1, 1, 0),
(1271, 12, 2100, '2019-09-14', '2019-12-14', '10 A.M - 11 A.M', '2019-09-11', '2019-09-18', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `courseid` int(6) UNSIGNED ZEROFILL NOT NULL,
  `coursename` varchar(100) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`courseid`, `coursename`, `category`) VALUES
(000005, 'BA', '004'),
(000006, 'MCA', '009'),
(000007, 'CSBA', '007'),
(000008, 'BCA', '004'),
(000009, 'MBA', '009'),
(000010, 'BBM', '004'),
(000011, 'B.Com', '004'),
(000012, 'science', '012'),
(000013, 'b.Tech', '004'),
(000015, 'BE', '016');

-- --------------------------------------------------------

--
-- Table structure for table `tblorderbook`
--

CREATE TABLE `tblorderbook` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `challanid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderbook`
--

INSERT INTO `tblorderbook` (`orderid`, `userid`, `bookid`, `challanid`, `qty`, `totalamount`) VALUES
(295, 1, 117, 1254, 1, 550),
(296, 1, 126, 1254, 1, 450),
(315, 8, 115, 1262, 1, 500),
(316, 8, 129, 1262, 1, 500),
(317, 5, 124, 1263, 1, 600),
(318, 5, 123, 1263, 1, 470),
(325, 7, 116, 1269, 1, 600),
(326, 11, 126, 1270, 2, 900),
(327, 12, 126, 1271, 1, 450),
(328, 12, 117, 1271, 3, 1650);

-- --------------------------------------------------------

--
-- Table structure for table `tblstore`
--

CREATE TABLE `tblstore` (
  `storeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstore`
--

INSERT INTO `tblstore` (`storeid`, `userid`, `bookid`, `qty`, `totalamount`) VALUES
(36, 6, 126, 1, 4500),
(37, 6, 115, 4, 3500);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userid`, `name`, `phone`, `address`, `email`, `username`, `password`) VALUES
(5, 'Nasaf', 9845838824, 'Kaikamba, Mangalore', 'nash@gmail.com', 'nash', 'nash1234'),
(7, 'Jassim', 8861244976, 'Mangalore', 'jas1234@gmail.com', 'jazz', 'jazz1234'),
(8, 'Swabeer Mohd', 7854236214, 'Farangipete', 'swab@gmail.com', 'swab', 'swab5678'),
(11, 'Ronaldo', 9558778559, 'Portugal', 'ron7@gmail.com', 'cr7', 'ronaldo7'),
(12, 'Rizwan', 8105973997, 'K.C.Road, Mangalore', 'riz@gmail.com', 'riz', 'rizwan1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `wishlistid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `bookid` int(11) NOT NULL,
  `prvstatus` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `not_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`wishlistid`, `userid`, `bookid`, `prvstatus`, `status`, `not_status`) VALUES
(1, 7, 126, 1, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `tblchallan`
--
ALTER TABLE `tblchallan`
  ADD PRIMARY KEY (`challanid`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `tblorderbook`
--
ALTER TABLE `tblorderbook`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `tblstore`
--
ALTER TABLE `tblstore`
  ADD PRIMARY KEY (`storeid`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`wishlistid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `bookid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `categoryid` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tblchallan`
--
ALTER TABLE `tblchallan`
  MODIFY `challanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1272;
--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `courseid` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblorderbook`
--
ALTER TABLE `tblorderbook`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;
--
-- AUTO_INCREMENT for table `tblstore`
--
ALTER TABLE `tblstore`
  MODIFY `storeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `wishlistid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
