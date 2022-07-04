SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- Database: `bank`

-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sachin', 'Arjun', 200, '2021-04-17 18:58:27'),
(2, 'Saneet', 'Arjun', 200, '2021-04-17 19:00:31'),
(3, 'Arjun', 'Rishi', 5000, '2021-04-17 19:01:32'),
(4, 'Sachin', 'Rishi', 5000, '2021-04-17 19:06:15'),
(5, 'Arjun', 'Abhishek', 500, '2021-04-17 19:28:24'),
(6, 'Arjun', 'Abhishek', 500, '2021-04-17 19:30:31'),
(7, 'Arjun', 'Abhishek', 200, '2021-04-17 19:31:22'),
(8, 'Rohit', 'Gaurav', 520, '2021-04-18 07:39:58'),
(9, 'Disha', 'Shubham', 500, '2021-04-18 09:37:08'),
(10, 'Sachin', 'Arjun', 100, '2021-04-18 11:52:18');


-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1084572, 'Sachin Chaudhary', 'sachin.chaudhary@gmail.com', 100000),
(1092654, 'Pragyanand Mishra', 'pragyanand.mishra@gmail.com', 95000),
(1063624, 'Gaurav Kumar', 'gaurav.kumar@gmail.com', 65000),
(1094542, 'Arjun Kapoor', 'arjun.kapoor@gmail.com', 55000),
(1075345, 'Rishi Kapoor', 'rishi.kapoor@gmail.com', 35000),
(1095465, 'Rohit Shetty', 'rohit.shetty@gmail.com', 75000),
(1026554, 'Disha Patani', 'disha.patani@gmail.com', 30000),
(1067875, 'Shubham Yadav', 'shubham.yadav@gmail.com', 70000),
(1038877, 'Abhishek Singh', 'abhishek.singh@gmail.com', 25000),
(1899245, 'Manish Dubey', 'manish.dubey@gmail.com', 10000);


-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT for table `transaction`
--f
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54655;
COMMIT;

