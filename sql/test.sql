/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50521
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2018-12-07 10:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'TEST');

-- ----------------------------
-- Table structure for zaic_h5_bill
-- ----------------------------
DROP TABLE IF EXISTS `zaic_h5_bill`;
CREATE TABLE `zaic_h5_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `push_type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `insure_place` varchar(255) DEFAULT NULL,
  `business_policy_no` varchar(255) DEFAULT NULL,
  `business_premium_interval` varchar(255) DEFAULT NULL,
  `compel_policy_no` varchar(255) DEFAULT NULL,
  `compel_premium_interval` varchar(255) DEFAULT NULL,
  `vehicle_licence_plate_no` varchar(255) DEFAULT NULL,
  `vehicle_register_date` varchar(255) DEFAULT NULL,
  `vehicle_brand` varchar(255) DEFAULT NULL,
  `insurant_name` varchar(255) DEFAULT NULL,
  `vehicle_owner_name` varchar(255) DEFAULT NULL,
  `policy_holder_name` varchar(255) DEFAULT NULL,
  `accept_date` varchar(255) DEFAULT NULL,
  `vehicle_policy_effective_date` varchar(255) DEFAULT NULL,
  `vehicle_policy_expiry_date` varchar(255) DEFAULT NULL,
  `compel_effective_date` varchar(255) DEFAULT NULL,
  `compel_expiry_date` varchar(255) DEFAULT NULL,
  `vehicle_policy_order_no` varchar(255) DEFAULT NULL,
  `is_net_to_telemarket` varchar(255) DEFAULT NULL,
  `recipienter_name` varchar(255) DEFAULT NULL,
  `tax_preimum` varchar(255) DEFAULT NULL,
  `payment_way` varchar(255) DEFAULT NULL,
  `installment_no` varchar(255) DEFAULT NULL,
  `vehicle_transferflag` varchar(255) DEFAULT NULL,
  `is_new` varchar(255) DEFAULT NULL,
  `vehicle_age` varchar(255) DEFAULT NULL,
  `is_import_car` varchar(255) DEFAULT NULL,
  `vehicle_acquisition_price` varchar(255) DEFAULT NULL,
  `insurance_type` varchar(255) DEFAULT NULL,
  `vehicle_usage_type` varchar(255) DEFAULT NULL,
  `vehicle_type` varchar(255) DEFAULT NULL,
  `endorsement_type` varchar(255) DEFAULT NULL,
  `business_tp_endorsement_no` varchar(255) DEFAULT NULL,
  `business_fee` varchar(255) DEFAULT NULL,
  `business_apply_time` varchar(255) DEFAULT NULL,
  `business_effective_date` varchar(255) DEFAULT NULL,
  `compel_tp_endorsement_no` varchar(255) DEFAULT NULL,
  `compel_fee` varchar(255) DEFAULT NULL,
  `compel_apply_time` varchar(255) DEFAULT NULL,
  `compel_endor_effective_date` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `delFlag` varchar(1) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_time` bigint(255) DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `update_time` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaic_h5_bill
-- ----------------------------

-- ----------------------------
-- Table structure for zaic_h5_fell
-- ----------------------------
DROP TABLE IF EXISTS `zaic_h5_fell`;
CREATE TABLE `zaic_h5_fell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `premium_type` varchar(255) DEFAULT NULL,
  `policy_no` varchar(255) DEFAULT NULL,
  `tp_endorsement_no` varchar(255) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `business_amount` varchar(255) DEFAULT NULL,
  `is_manual_modify` varchar(255) DEFAULT NULL,
  `payment_way` varchar(255) DEFAULT NULL,
  `fw_fee_type` varchar(255) DEFAULT NULL,
  `fw_scale` varchar(255) DEFAULT NULL,
  `fw_fixed_amount` varchar(255) DEFAULT NULL,
  `fw_amount` varchar(255) DEFAULT NULL,
  `fw_policy_amount` varchar(255) DEFAULT NULL,
  `commission_fee_type` varchar(255) DEFAULT NULL,
  `commission_scale` varchar(255) DEFAULT NULL,
  `commission_fixed_amount` varchar(255) DEFAULT NULL,
  `commission_amount` varchar(255) DEFAULT NULL,
  `commission_policy_amount` varchar(255) DEFAULT NULL,
  `reference_fee_type` varchar(255) DEFAULT NULL,
  `reference_scale` varchar(255) DEFAULT NULL,
  `reference_fixed_amount` varchar(255) DEFAULT NULL,
  `reference_amount` varchar(255) DEFAULT NULL,
  `reference_policy_amount` varchar(255) DEFAULT NULL,
  `commission_fee_type_pa` varchar(255) DEFAULT NULL,
  `commission_scale_pa` varchar(255) DEFAULT NULL,
  `commission_fixed_amount_pa` varchar(255) DEFAULT NULL,
  `commission_amount_pa` varchar(255) DEFAULT NULL,
  `commission_policy_amount_pa` varchar(255) DEFAULT NULL,
  `fee_amount_total` varchar(255) DEFAULT NULL,
  `fee_scale_total` varchar(255) DEFAULT NULL,
  `diff_amount_total` varchar(255) DEFAULT NULL,
  `biz_type` varchar(255) DEFAULT NULL,
  `flow_type` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `delFlag` varchar(1) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_time` bigint(255) DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `update_time` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaic_h5_fell
-- ----------------------------

-- ----------------------------
-- Table structure for zaic_h5_url
-- ----------------------------
DROP TABLE IF EXISTS `zaic_h5_url`;
CREATE TABLE `zaic_h5_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(250) DEFAULT NULL,
  `cell_phone` varchar(255) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `certificate_no` varchar(255) DEFAULT NULL,
  `vehicle_licence_plate_no` varchar(255) DEFAULT NULL,
  `vehicle_vin` varchar(255) DEFAULT NULL,
  `vehicle_engine_no` varchar(255) DEFAULT NULL,
  `insure_place` varchar(255) DEFAULT NULL,
  `vehicle_register_date` varchar(255) DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL,
  `customer_mobile` varchar(255) DEFAULT NULL,
  `url` varchar(3000) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `delFlag` varchar(255) DEFAULT NULL,
  `create_user` varchar(1) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `update_user` varchar(0) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zaic_h5_url
-- ----------------------------
