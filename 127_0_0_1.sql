-- --------------------------------------------------------
-- Vært:                         127.0.0.1
-- Server-version:               10.4.22-MariaDB - mariadb.org binary distribution
-- ServerOS:                     Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for information_schema
CREATE DATABASE IF NOT EXISTS `information_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `information_schema`;

-- Dumping structure for tabel information_schema.ALL_PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `ALL_PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(16) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext DEFAULT NULL,
  `PLUGIN_LICENSE` varchar(80) NOT NULL DEFAULT '',
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_MATURITY` varchar(12) NOT NULL DEFAULT '',
  `PLUGIN_AUTH_VERSION` varchar(80) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.APPLICABLE_ROLES
CREATE TEMPORARY TABLE IF NOT EXISTS `APPLICABLE_ROLES` (
  `GRANTEE` varchar(190) NOT NULL DEFAULT '',
  `ROLE_NAME` varchar(128) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT '',
  `IS_DEFAULT` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.CHARACTER_SETS
CREATE TEMPORARY TABLE IF NOT EXISTS `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.CHECK_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `CHECK_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `CHECK_CLAUSE` longtext NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.CLIENT_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `CLIENT_STATISTICS` (
  `CLIENT` varchar(64) NOT NULL DEFAULT '',
  `TOTAL_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `CONCURRENT_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `CONNECTED_TIME` bigint(21) NOT NULL DEFAULT 0,
  `BUSY_TIME` double NOT NULL DEFAULT 0,
  `CPU_TIME` double NOT NULL DEFAULT 0,
  `BYTES_RECEIVED` bigint(21) NOT NULL DEFAULT 0,
  `BYTES_SENT` bigint(21) NOT NULL DEFAULT 0,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_READ` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_SENT` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_DELETED` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_INSERTED` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_UPDATED` bigint(21) NOT NULL DEFAULT 0,
  `SELECT_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `UPDATE_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `OTHER_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL DEFAULT 0,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL DEFAULT 0,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `LOST_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `ACCESS_DENIED` bigint(21) NOT NULL DEFAULT 0,
  `EMPTY_QUERIES` bigint(21) NOT NULL DEFAULT 0,
  `TOTAL_SSL_CONNECTIONS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.COLLATIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT 0,
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.COLLATION_CHARACTER_SET_APPLICABILITY
CREATE TEMPORARY TABLE IF NOT EXISTS `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMNS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `COLUMN_DEFAULT` longtext DEFAULT NULL,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL DEFAULT '',
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(30) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) NOT NULL DEFAULT '',
  `IS_GENERATED` varchar(6) NOT NULL DEFAULT '',
  `GENERATION_EXPRESSION` longtext DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.COLUMN_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.ENABLED_ROLES
CREATE TEMPORARY TABLE IF NOT EXISTS `ENABLED_ROLES` (
  `ROLE_NAME` varchar(128) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.ENGINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(160) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.EVENTS
CREATE TEMPORARY TABLE IF NOT EXISTS `EVENTS` (
  `EVENT_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(189) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL DEFAULT '',
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT 0,
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.FILES
CREATE TEMPORARY TABLE IF NOT EXISTS `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT 0,
  `FILE_NAME` varchar(512) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT 0,
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.GEOMETRY_COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `GEOMETRY_COLUMNS` (
  `F_TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `F_TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `F_TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `F_GEOMETRY_COLUMN` varchar(64) NOT NULL DEFAULT '',
  `G_TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `G_TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `G_TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `G_GEOMETRY_COLUMN` varchar(64) NOT NULL DEFAULT '',
  `STORAGE_TYPE` tinyint(2) NOT NULL DEFAULT 0,
  `GEOMETRY_TYPE` int(7) NOT NULL DEFAULT 0,
  `COORD_DIMENSION` tinyint(2) NOT NULL DEFAULT 0,
  `MAX_PPR` tinyint(2) NOT NULL DEFAULT 0,
  `SRID` smallint(5) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.GLOBAL_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.GLOBAL_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INDEX_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `INDEX_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(192) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(192) NOT NULL DEFAULT '',
  `ROWS_READ` bigint(21) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_BUFFER_PAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `BLOCK_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT 0,
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGE_STATE` varchar(64) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_BUFFER_PAGE_LRU
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_PAGE_LRU` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LRU_POSITION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGE_TYPE` varchar(64) DEFAULT NULL,
  `FLUSH_TYPE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `FIX_COUNT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `IS_HASHED` varchar(3) DEFAULT NULL,
  `NEWEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `OLDEST_MODIFICATION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `ACCESS_TIME` bigint(21) unsigned NOT NULL DEFAULT 0,
  `TABLE_NAME` varchar(1024) DEFAULT NULL,
  `INDEX_NAME` varchar(1024) DEFAULT NULL,
  `NUMBER_RECORDS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DATA_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `COMPRESSED_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `COMPRESSED` varchar(3) DEFAULT NULL,
  `IO_FIX` varchar(64) DEFAULT NULL,
  `IS_OLD` varchar(3) DEFAULT NULL,
  `FREE_PAGE_CLOCK` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_BUFFER_POOL_STATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_BUFFER_POOL_STATS` (
  `POOL_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `POOL_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `FREE_BUFFERS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT 0,
  `OLD_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MODIFIED_DATABASE_PAGES` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PENDING_DECOMPRESS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PENDING_READS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PENDING_FLUSH_LRU` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PENDING_FLUSH_LIST` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGES_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGES_NOT_MADE_YOUNG` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGES_MADE_YOUNG_RATE` double NOT NULL DEFAULT 0,
  `PAGES_MADE_NOT_YOUNG_RATE` double NOT NULL DEFAULT 0,
  `NUMBER_PAGES_READ` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NUMBER_PAGES_CREATED` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NUMBER_PAGES_WRITTEN` bigint(21) unsigned NOT NULL DEFAULT 0,
  `PAGES_READ_RATE` double NOT NULL DEFAULT 0,
  `PAGES_CREATE_RATE` double NOT NULL DEFAULT 0,
  `PAGES_WRITTEN_RATE` double NOT NULL DEFAULT 0,
  `NUMBER_PAGES_GET` bigint(21) unsigned NOT NULL DEFAULT 0,
  `HIT_RATE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NOT_YOUNG_MAKE_PER_THOUSAND_GETS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NUMBER_PAGES_READ_AHEAD` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NUMBER_READ_AHEAD_EVICTED` bigint(21) unsigned NOT NULL DEFAULT 0,
  `READ_AHEAD_RATE` double NOT NULL DEFAULT 0,
  `READ_AHEAD_EVICTED_RATE` double NOT NULL DEFAULT 0,
  `LRU_IO_TOTAL` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LRU_IO_CURRENT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `UNCOMPRESS_TOTAL` bigint(21) unsigned NOT NULL DEFAULT 0,
  `UNCOMPRESS_CURRENT` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMP
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP` (
  `page_size` int(5) NOT NULL DEFAULT 0,
  `compress_ops` int(11) NOT NULL DEFAULT 0,
  `compress_ops_ok` int(11) NOT NULL DEFAULT 0,
  `compress_time` int(11) NOT NULL DEFAULT 0,
  `uncompress_ops` int(11) NOT NULL DEFAULT 0,
  `uncompress_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMPMEM
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM` (
  `page_size` int(5) NOT NULL DEFAULT 0,
  `buffer_pool_instance` int(11) NOT NULL DEFAULT 0,
  `pages_used` int(11) NOT NULL DEFAULT 0,
  `pages_free` int(11) NOT NULL DEFAULT 0,
  `relocation_ops` bigint(21) NOT NULL DEFAULT 0,
  `relocation_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMPMEM_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMPMEM_RESET` (
  `page_size` int(5) NOT NULL DEFAULT 0,
  `buffer_pool_instance` int(11) NOT NULL DEFAULT 0,
  `pages_used` int(11) NOT NULL DEFAULT 0,
  `pages_free` int(11) NOT NULL DEFAULT 0,
  `relocation_ops` bigint(21) NOT NULL DEFAULT 0,
  `relocation_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMP_PER_INDEX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX` (
  `database_name` varchar(192) NOT NULL DEFAULT '',
  `table_name` varchar(192) NOT NULL DEFAULT '',
  `index_name` varchar(192) NOT NULL DEFAULT '',
  `compress_ops` int(11) NOT NULL DEFAULT 0,
  `compress_ops_ok` int(11) NOT NULL DEFAULT 0,
  `compress_time` int(11) NOT NULL DEFAULT 0,
  `uncompress_ops` int(11) NOT NULL DEFAULT 0,
  `uncompress_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMP_PER_INDEX_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_PER_INDEX_RESET` (
  `database_name` varchar(192) NOT NULL DEFAULT '',
  `table_name` varchar(192) NOT NULL DEFAULT '',
  `index_name` varchar(192) NOT NULL DEFAULT '',
  `compress_ops` int(11) NOT NULL DEFAULT 0,
  `compress_ops_ok` int(11) NOT NULL DEFAULT 0,
  `compress_time` int(11) NOT NULL DEFAULT 0,
  `uncompress_ops` int(11) NOT NULL DEFAULT 0,
  `uncompress_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_CMP_RESET
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_CMP_RESET` (
  `page_size` int(5) NOT NULL DEFAULT 0,
  `compress_ops` int(11) NOT NULL DEFAULT 0,
  `compress_ops_ok` int(11) NOT NULL DEFAULT 0,
  `compress_time` int(11) NOT NULL DEFAULT 0,
  `uncompress_ops` int(11) NOT NULL DEFAULT 0,
  `uncompress_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_BEING_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_BEING_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_CONFIG
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_CONFIG` (
  `KEY` varchar(193) NOT NULL DEFAULT '',
  `VALUE` varchar(193) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_DEFAULT_STOPWORD
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DEFAULT_STOPWORD` (
  `value` varchar(18) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_DELETED
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_DELETED` (
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_INDEX_CACHE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_CACHE` (
  `WORD` varchar(337) NOT NULL DEFAULT '',
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DOC_COUNT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `POSITION` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_FT_INDEX_TABLE
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_FT_INDEX_TABLE` (
  `WORD` varchar(337) NOT NULL DEFAULT '',
  `FIRST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LAST_DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DOC_COUNT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DOC_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `POSITION` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_LOCKS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCKS` (
  `lock_id` varchar(81) NOT NULL DEFAULT '',
  `lock_trx_id` varchar(18) NOT NULL DEFAULT '',
  `lock_mode` varchar(32) NOT NULL DEFAULT '',
  `lock_type` varchar(32) NOT NULL DEFAULT '',
  `lock_table` varchar(1024) NOT NULL DEFAULT '',
  `lock_index` varchar(1024) DEFAULT NULL,
  `lock_space` bigint(21) unsigned DEFAULT NULL,
  `lock_page` bigint(21) unsigned DEFAULT NULL,
  `lock_rec` bigint(21) unsigned DEFAULT NULL,
  `lock_data` varchar(8192) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_LOCK_WAITS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_LOCK_WAITS` (
  `requesting_trx_id` varchar(18) NOT NULL DEFAULT '',
  `requested_lock_id` varchar(81) NOT NULL DEFAULT '',
  `blocking_trx_id` varchar(18) NOT NULL DEFAULT '',
  `blocking_lock_id` varchar(81) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_METRICS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_METRICS` (
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `SUBSYSTEM` varchar(193) NOT NULL DEFAULT '',
  `COUNT` bigint(21) NOT NULL DEFAULT 0,
  `MAX_COUNT` bigint(21) DEFAULT NULL,
  `MIN_COUNT` bigint(21) DEFAULT NULL,
  `AVG_COUNT` double DEFAULT NULL,
  `COUNT_RESET` bigint(21) NOT NULL DEFAULT 0,
  `MAX_COUNT_RESET` bigint(21) DEFAULT NULL,
  `MIN_COUNT_RESET` bigint(21) DEFAULT NULL,
  `AVG_COUNT_RESET` double DEFAULT NULL,
  `TIME_ENABLED` datetime DEFAULT NULL,
  `TIME_DISABLED` datetime DEFAULT NULL,
  `TIME_ELAPSED` bigint(21) DEFAULT NULL,
  `TIME_RESET` datetime DEFAULT NULL,
  `STATUS` varchar(193) NOT NULL DEFAULT '',
  `TYPE` varchar(193) NOT NULL DEFAULT '',
  `COMMENT` varchar(193) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_MUTEXES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_MUTEXES` (
  `NAME` varchar(4000) NOT NULL DEFAULT '',
  `CREATE_FILE` varchar(4000) NOT NULL DEFAULT '',
  `CREATE_LINE` int(11) unsigned NOT NULL DEFAULT 0,
  `OS_WAITS` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_COLUMNS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_COLUMNS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MTYPE` int(11) NOT NULL DEFAULT 0,
  `PRTYPE` int(11) NOT NULL DEFAULT 0,
  `LEN` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_DATAFILES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_DATAFILES` (
  `SPACE` int(11) unsigned NOT NULL DEFAULT 0,
  `PATH` varchar(4000) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_FIELDS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FIELDS` (
  `INDEX_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_FOREIGN
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN` (
  `ID` varchar(193) NOT NULL DEFAULT '',
  `FOR_NAME` varchar(193) NOT NULL DEFAULT '',
  `REF_NAME` varchar(193) NOT NULL DEFAULT '',
  `N_COLS` int(11) unsigned NOT NULL DEFAULT 0,
  `TYPE` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_FOREIGN_COLS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_FOREIGN_COLS` (
  `ID` varchar(193) NOT NULL DEFAULT '',
  `FOR_COL_NAME` varchar(193) NOT NULL DEFAULT '',
  `REF_COL_NAME` varchar(193) NOT NULL DEFAULT '',
  `POS` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_INDEXES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_INDEXES` (
  `INDEX_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `TYPE` int(11) NOT NULL DEFAULT 0,
  `N_FIELDS` int(11) NOT NULL DEFAULT 0,
  `PAGE_NO` int(11) NOT NULL DEFAULT 0,
  `SPACE` int(11) NOT NULL DEFAULT 0,
  `MERGE_THRESHOLD` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_SEMAPHORE_WAITS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_SEMAPHORE_WAITS` (
  `THREAD_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `OBJECT_NAME` varchar(4000) DEFAULT NULL,
  `FILE` varchar(4000) DEFAULT NULL,
  `LINE` int(11) unsigned NOT NULL DEFAULT 0,
  `WAIT_TIME` bigint(21) unsigned NOT NULL DEFAULT 0,
  `WAIT_OBJECT` bigint(21) unsigned NOT NULL DEFAULT 0,
  `WAIT_TYPE` varchar(16) DEFAULT NULL,
  `HOLDER_THREAD_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `HOLDER_FILE` varchar(4000) DEFAULT NULL,
  `HOLDER_LINE` int(11) unsigned NOT NULL DEFAULT 0,
  `CREATED_FILE` varchar(4000) DEFAULT NULL,
  `CREATED_LINE` int(11) unsigned NOT NULL DEFAULT 0,
  `WRITER_THREAD` bigint(21) unsigned NOT NULL DEFAULT 0,
  `RESERVATION_MODE` varchar(16) DEFAULT NULL,
  `READERS` int(11) unsigned NOT NULL DEFAULT 0,
  `WAITERS_FLAG` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LOCK_WORD` bigint(21) unsigned NOT NULL DEFAULT 0,
  `LAST_WRITER_FILE` varchar(4000) DEFAULT NULL,
  `LAST_WRITER_LINE` int(11) unsigned NOT NULL DEFAULT 0,
  `OS_WAIT_COUNT` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLES` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int(11) NOT NULL DEFAULT 0,
  `N_COLS` int(11) NOT NULL DEFAULT 0,
  `SPACE` int(11) NOT NULL DEFAULT 0,
  `ROW_FORMAT` varchar(12) DEFAULT NULL,
  `ZIP_PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT 0,
  `SPACE_TYPE` varchar(10) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESPACES` (
  `SPACE` int(11) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(655) NOT NULL DEFAULT '',
  `FLAG` int(11) unsigned NOT NULL DEFAULT 0,
  `ROW_FORMAT` varchar(22) DEFAULT NULL,
  `PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT 0,
  `ZIP_PAGE_SIZE` int(11) unsigned NOT NULL DEFAULT 0,
  `SPACE_TYPE` varchar(10) DEFAULT NULL,
  `FS_BLOCK_SIZE` int(11) unsigned NOT NULL DEFAULT 0,
  `FILE_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `ALLOCATED_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_TABLESTATS
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_TABLESTATS` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(193) NOT NULL DEFAULT '',
  `STATS_INITIALIZED` varchar(193) NOT NULL DEFAULT '',
  `NUM_ROWS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `CLUST_INDEX_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `OTHER_INDEX_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MODIFIED_COUNTER` bigint(21) unsigned NOT NULL DEFAULT 0,
  `AUTOINC` bigint(21) unsigned NOT NULL DEFAULT 0,
  `REF_COUNT` int(11) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_SYS_VIRTUAL
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_SYS_VIRTUAL` (
  `TABLE_ID` bigint(21) unsigned NOT NULL DEFAULT 0,
  `POS` int(11) unsigned NOT NULL DEFAULT 0,
  `BASE_POS` int(11) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_TABLESPACES_ENCRYPTION
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLESPACES_ENCRYPTION` (
  `SPACE` int(11) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(655) DEFAULT NULL,
  `ENCRYPTION_SCHEME` int(11) unsigned NOT NULL DEFAULT 0,
  `KEYSERVER_REQUESTS` int(11) unsigned NOT NULL DEFAULT 0,
  `MIN_KEY_VERSION` int(11) unsigned NOT NULL DEFAULT 0,
  `CURRENT_KEY_VERSION` int(11) unsigned NOT NULL DEFAULT 0,
  `KEY_ROTATION_PAGE_NUMBER` bigint(21) unsigned DEFAULT NULL,
  `KEY_ROTATION_MAX_PAGE_NUMBER` bigint(21) unsigned DEFAULT NULL,
  `CURRENT_KEY_ID` int(11) unsigned NOT NULL DEFAULT 0,
  `ROTATING_OR_FLUSHING` int(1) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_TABLESPACES_SCRUBBING
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TABLESPACES_SCRUBBING` (
  `SPACE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `NAME` varchar(655) DEFAULT NULL,
  `COMPRESSED` int(1) unsigned NOT NULL DEFAULT 0,
  `LAST_SCRUB_COMPLETED` datetime DEFAULT NULL,
  `CURRENT_SCRUB_STARTED` datetime DEFAULT NULL,
  `CURRENT_SCRUB_ACTIVE_THREADS` int(11) unsigned DEFAULT NULL,
  `CURRENT_SCRUB_PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT 0,
  `CURRENT_SCRUB_MAX_PAGE_NUMBER` bigint(21) unsigned NOT NULL DEFAULT 0,
  `ON_SSD` int(1) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.INNODB_TRX
CREATE TEMPORARY TABLE IF NOT EXISTS `INNODB_TRX` (
  `trx_id` varchar(18) NOT NULL DEFAULT '',
  `trx_state` varchar(13) NOT NULL DEFAULT '',
  `trx_started` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `trx_requested_lock_id` varchar(81) DEFAULT NULL,
  `trx_wait_started` datetime DEFAULT NULL,
  `trx_weight` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_mysql_thread_id` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_query` varchar(1024) DEFAULT NULL,
  `trx_operation_state` varchar(64) DEFAULT NULL,
  `trx_tables_in_use` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_tables_locked` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_lock_structs` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_lock_memory_bytes` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_rows_locked` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_rows_modified` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_concurrency_tickets` bigint(21) unsigned NOT NULL DEFAULT 0,
  `trx_isolation_level` varchar(16) NOT NULL DEFAULT '',
  `trx_unique_checks` int(1) NOT NULL DEFAULT 0,
  `trx_foreign_key_checks` int(1) NOT NULL DEFAULT 0,
  `trx_last_foreign_key_error` varchar(256) DEFAULT NULL,
  `trx_is_read_only` int(1) NOT NULL DEFAULT 0,
  `trx_autocommit_non_locking` int(1) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.KEYWORDS
CREATE TEMPORARY TABLE IF NOT EXISTS `KEYWORDS` (
  `WORD` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.KEY_CACHES
CREATE TEMPORARY TABLE IF NOT EXISTS `KEY_CACHES` (
  `KEY_CACHE_NAME` varchar(192) NOT NULL DEFAULT '',
  `SEGMENTS` int(3) unsigned DEFAULT NULL,
  `SEGMENT_NUMBER` int(3) unsigned DEFAULT NULL,
  `FULL_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `BLOCK_SIZE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `USED_BLOCKS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `UNUSED_BLOCKS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DIRTY_BLOCKS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `READ_REQUESTS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `READS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `WRITE_REQUESTS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `WRITES` bigint(21) unsigned NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.KEY_COLUMN_USAGE
CREATE TEMPORARY TABLE IF NOT EXISTS `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT 0,
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.OPTIMIZER_TRACE
CREATE TEMPORARY TABLE IF NOT EXISTS `OPTIMIZER_TRACE` (
  `QUERY` longtext NOT NULL DEFAULT '',
  `TRACE` longtext NOT NULL DEFAULT '',
  `MISSING_BYTES_BEYOND_MAX_MEM_SIZE` int(20) NOT NULL DEFAULT 0,
  `INSUFFICIENT_PRIVILEGES` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.PARAMETERS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARAMETERS` (
  `SPECIFIC_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `SPECIFIC_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` int(21) NOT NULL DEFAULT 0,
  `PARAMETER_MODE` varchar(5) DEFAULT NULL,
  `PARAMETER_NAME` varchar(64) DEFAULT NULL,
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.PARTITIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(18) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext DEFAULT NULL,
  `SUBPARTITION_EXPRESSION` longtext DEFAULT NULL,
  `PARTITION_DESCRIPTION` longtext DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT 0,
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT 0,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.PLUGINS
CREATE TEMPORARY TABLE IF NOT EXISTS `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(16) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext DEFAULT NULL,
  `PLUGIN_LICENSE` varchar(80) NOT NULL DEFAULT '',
  `LOAD_OPTION` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_MATURITY` varchar(12) NOT NULL DEFAULT '',
  `PLUGIN_AUTH_VERSION` varchar(80) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.PROCESSLIST
CREATE TEMPORARY TABLE IF NOT EXISTS `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT 0,
  `USER` varchar(128) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT 0,
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext DEFAULT NULL,
  `TIME_MS` decimal(22,3) NOT NULL DEFAULT 0.000,
  `STAGE` tinyint(2) NOT NULL DEFAULT 0,
  `MAX_STAGE` tinyint(2) NOT NULL DEFAULT 0,
  `PROGRESS` decimal(7,3) NOT NULL DEFAULT 0.000,
  `MEMORY_USED` bigint(7) NOT NULL DEFAULT 0,
  `MAX_MEMORY_USED` bigint(7) NOT NULL DEFAULT 0,
  `EXAMINED_ROWS` int(7) NOT NULL DEFAULT 0,
  `QUERY_ID` bigint(4) NOT NULL DEFAULT 0,
  `INFO_BINARY` blob DEFAULT NULL,
  `TID` bigint(4) NOT NULL DEFAULT 0
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.PROFILING
CREATE TEMPORARY TABLE IF NOT EXISTS `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT 0,
  `SEQ` int(20) NOT NULL DEFAULT 0,
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT 0.000000,
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.REFERENTIAL_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.ROUTINES
CREATE TEMPORARY TABLE IF NOT EXISTS `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(13) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` int(21) DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` int(21) DEFAULT NULL,
  `NUMERIC_PRECISION` int(21) DEFAULT NULL,
  `NUMERIC_SCALE` int(21) DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(64) DEFAULT NULL,
  `COLLATION_NAME` varchar(64) DEFAULT NULL,
  `DTD_IDENTIFIER` longtext DEFAULT NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext DEFAULT NULL,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` longtext NOT NULL DEFAULT '',
  `DEFINER` varchar(189) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SCHEMATA
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMATA` (
  `CATALOG_NAME` varchar(512) NOT NULL DEFAULT '',
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SCHEMA_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SESSION_STATUS
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SESSION_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SPATIAL_REF_SYS
CREATE TEMPORARY TABLE IF NOT EXISTS `SPATIAL_REF_SYS` (
  `SRID` smallint(5) NOT NULL DEFAULT 0,
  `AUTH_NAME` varchar(512) NOT NULL DEFAULT '',
  `AUTH_SRID` int(5) NOT NULL DEFAULT 0,
  `SRTEXT` varchar(2048) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SQL_FUNCTIONS
CREATE TEMPORARY TABLE IF NOT EXISTS `SQL_FUNCTIONS` (
  `FUNCTION` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `STATISTICS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT 0,
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT 0,
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL,
  `INDEX_COMMENT` varchar(1024) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.SYSTEM_VARIABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `SYSTEM_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `SESSION_VALUE` varchar(2048) DEFAULT NULL,
  `GLOBAL_VALUE` varchar(2048) DEFAULT NULL,
  `GLOBAL_VALUE_ORIGIN` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_VALUE` varchar(2048) DEFAULT NULL,
  `VARIABLE_SCOPE` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_COMMENT` varchar(2048) NOT NULL DEFAULT '',
  `NUMERIC_MIN_VALUE` varchar(21) DEFAULT NULL,
  `NUMERIC_MAX_VALUE` varchar(21) DEFAULT NULL,
  `NUMERIC_BLOCK_SIZE` varchar(21) DEFAULT NULL,
  `ENUM_VALUE_LIST` longtext DEFAULT NULL,
  `READ_ONLY` varchar(3) NOT NULL DEFAULT '',
  `COMMAND_LINE_ARGUMENT` varchar(64) DEFAULT NULL
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TABLES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLES` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(2048) DEFAULT NULL,
  `TABLE_COMMENT` varchar(2048) NOT NULL DEFAULT '',
  `MAX_INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `TEMPORARY` varchar(1) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TABLESPACES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLESPACES` (
  `TABLESPACE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `TABLESPACE_TYPE` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `EXTENT_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `NODEGROUP_ID` bigint(21) unsigned DEFAULT NULL,
  `TABLESPACE_COMMENT` varchar(2048) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TABLE_CONSTRAINTS
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TABLE_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TABLE_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `TABLE_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(192) NOT NULL DEFAULT '',
  `ROWS_READ` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_CHANGED` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_CHANGED_X_INDEXES` bigint(21) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.TRIGGERS
CREATE TEMPORARY TABLE IF NOT EXISTS `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT 0,
  `ACTION_CONDITION` longtext DEFAULT NULL,
  `ACTION_STATEMENT` longtext NOT NULL DEFAULT '',
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime(2) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(189) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.USER_PRIVILEGES
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_PRIVILEGES` (
  `GRANTEE` varchar(190) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.USER_STATISTICS
CREATE TEMPORARY TABLE IF NOT EXISTS `USER_STATISTICS` (
  `USER` varchar(128) NOT NULL DEFAULT '',
  `TOTAL_CONNECTIONS` int(11) NOT NULL DEFAULT 0,
  `CONCURRENT_CONNECTIONS` int(11) NOT NULL DEFAULT 0,
  `CONNECTED_TIME` int(11) NOT NULL DEFAULT 0,
  `BUSY_TIME` double NOT NULL DEFAULT 0,
  `CPU_TIME` double NOT NULL DEFAULT 0,
  `BYTES_RECEIVED` bigint(21) NOT NULL DEFAULT 0,
  `BYTES_SENT` bigint(21) NOT NULL DEFAULT 0,
  `BINLOG_BYTES_WRITTEN` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_READ` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_SENT` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_DELETED` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_INSERTED` bigint(21) NOT NULL DEFAULT 0,
  `ROWS_UPDATED` bigint(21) NOT NULL DEFAULT 0,
  `SELECT_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `UPDATE_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `OTHER_COMMANDS` bigint(21) NOT NULL DEFAULT 0,
  `COMMIT_TRANSACTIONS` bigint(21) NOT NULL DEFAULT 0,
  `ROLLBACK_TRANSACTIONS` bigint(21) NOT NULL DEFAULT 0,
  `DENIED_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `LOST_CONNECTIONS` bigint(21) NOT NULL DEFAULT 0,
  `ACCESS_DENIED` bigint(21) NOT NULL DEFAULT 0,
  `EMPTY_QUERIES` bigint(21) NOT NULL DEFAULT 0,
  `TOTAL_SSL_CONNECTIONS` bigint(21) unsigned NOT NULL DEFAULT 0,
  `MAX_STATEMENT_TIME_EXCEEDED` bigint(21) NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.user_variables
CREATE TEMPORARY TABLE IF NOT EXISTS `user_variables` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(2048) DEFAULT NULL,
  `VARIABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel information_schema.VIEWS
CREATE TEMPORARY TABLE IF NOT EXISTS `VIEWS` (
  `TABLE_CATALOG` varchar(512) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL DEFAULT '',
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(189) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `ALGORITHM` varchar(10) NOT NULL DEFAULT ''
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=0;

-- Data exporting was unselected.


-- Dumping database structure for limbo
CREATE DATABASE IF NOT EXISTS `limbo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `limbo`;

-- Dumping structure for tabel limbo.users
CREATE TABLE IF NOT EXISTS `users` (
  `usersId` int(11) NOT NULL AUTO_INCREMENT,
  `usersRank` enum('1','2','3','4') NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL,
  `usersStatus` set('None','Protected','Suspended','Banned') DEFAULT 'None',
  PRIMARY KEY (`usersId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.


-- Dumping database structure for mysql
CREATE DATABASE IF NOT EXISTS `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `mysql`;

-- Dumping structure for tabel mysql.columns_priv
CREATE TABLE IF NOT EXISTS `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Column privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.column_stats
CREATE TABLE IF NOT EXISTS `column_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `min_value` varbinary(255) DEFAULT NULL,
  `max_value` varbinary(255) DEFAULT NULL,
  `nulls_ratio` decimal(12,4) DEFAULT NULL,
  `avg_length` decimal(12,4) DEFAULT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  `hist_size` tinyint(3) unsigned DEFAULT NULL,
  `hist_type` enum('SINGLE_PREC_HB','DOUBLE_PREC_HB') COLLATE utf8_bin DEFAULT NULL,
  `histogram` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`column_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Columns';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.db
CREATE TABLE IF NOT EXISTS `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_history_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Database privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.event
CREATE TABLE IF NOT EXISTS `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  PRIMARY KEY (`db`,`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Events';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.func
CREATE TABLE IF NOT EXISTS `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT 0,
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User defined functions';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.general_log
CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.global_priv
CREATE TABLE IF NOT EXISTS `global_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Priv` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`Priv`)),
  PRIMARY KEY (`Host`,`User`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Users and global privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.gtid_slave_pos
CREATE TABLE IF NOT EXISTS `gtid_slave_pos` (
  `domain_id` int(10) unsigned NOT NULL,
  `sub_id` bigint(20) unsigned NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `seq_no` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`domain_id`,`sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Replication slave GTID position';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.help_category
CREATE TABLE IF NOT EXISTS `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help categories';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.help_keyword
CREATE TABLE IF NOT EXISTS `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help keywords';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.help_relation
CREATE TABLE IF NOT EXISTS `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='keyword-topic relation';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.help_topic
CREATE TABLE IF NOT EXISTS `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='help topics';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.index_stats
CREATE TABLE IF NOT EXISTS `index_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefix_arity` int(11) unsigned NOT NULL,
  `avg_frequency` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`,`index_name`,`prefix_arity`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Indexes';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.innodb_index_stats
CREATE TABLE IF NOT EXISTS `innodb_index_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `index_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `stat_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `stat_value` bigint(20) unsigned NOT NULL,
  `sample_size` bigint(20) unsigned DEFAULT NULL,
  `stat_description` varchar(1024) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`,`index_name`,`stat_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.innodb_table_stats
CREATE TABLE IF NOT EXISTS `innodb_table_stats` (
  `database_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(199) COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `n_rows` bigint(20) unsigned NOT NULL,
  `clustered_index_size` bigint(20) unsigned NOT NULL,
  `sum_of_other_index_sizes` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`database_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.plugin
CREATE TABLE IF NOT EXISTS `plugin` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `dl` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL plugins';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.proc
CREATE TABLE IF NOT EXISTS `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(141) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','IGNORE_BAD_TABLE_OPTIONS','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH','EMPTY_STRING_IS_NULL','SIMULTANEOUS_ASSIGNMENT','TIME_ROUND_FRACTIONAL') NOT NULL DEFAULT '',
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob DEFAULT NULL,
  `aggregate` enum('NONE','GROUP') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Stored Procedures';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.procs_priv
CREATE TABLE IF NOT EXISTS `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE','PACKAGE','PACKAGE BODY') COLLATE utf8_bin NOT NULL,
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Procedure privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.proxies_priv
CREATE TABLE IF NOT EXISTS `proxies_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proxied_user` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `With_grant` tinyint(1) NOT NULL DEFAULT 0,
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`Host`,`User`,`Proxied_host`,`Proxied_user`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='User proxy privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.roles_mapping
CREATE TABLE IF NOT EXISTS `roles_mapping` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Role` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Admin_option` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  UNIQUE KEY `Host` (`Host`,`User`,`Role`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Granted roles';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.servers
CREATE TABLE IF NOT EXISTS `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(80) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT 0,
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='MySQL Foreign Servers table';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.slow_log
CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `user_host` mediumtext NOT NULL,
  `query_time` time(6) NOT NULL,
  `lock_time` time(6) NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL,
  `thread_id` bigint(21) unsigned NOT NULL,
  `rows_affected` int(11) NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.tables_priv
CREATE TABLE IF NOT EXISTS `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(141) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger','Delete versioning rows') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Table privileges';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.table_stats
CREATE TABLE IF NOT EXISTS `table_stats` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `cardinality` bigint(21) unsigned DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 COLLATE=utf8_bin PAGE_CHECKSUM=1 TRANSACTIONAL=0 COMMENT='Statistics on Tables';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.time_zone
CREATE TABLE IF NOT EXISTS `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zones';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.time_zone_leap_second
CREATE TABLE IF NOT EXISTS `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Leap seconds information for time zones';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.time_zone_name
CREATE TABLE IF NOT EXISTS `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone names';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.time_zone_transition
CREATE TABLE IF NOT EXISTS `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transitions';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.time_zone_transition_type
CREATE TABLE IF NOT EXISTS `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT 0,
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=Aria DEFAULT CHARSET=utf8 PAGE_CHECKSUM=1 TRANSACTIONAL=1 COMMENT='Time zone transition types';

-- Data exporting was unselected.

-- Dumping structure for tabel mysql.transaction_registry
CREATE TABLE IF NOT EXISTS `transaction_registry` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `commit_id` bigint(20) unsigned NOT NULL,
  `begin_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `commit_timestamp` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `isolation_level` enum('READ-UNCOMMITTED','READ-COMMITTED','REPEATABLE-READ','SERIALIZABLE') COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `commit_id` (`commit_id`),
  KEY `begin_timestamp` (`begin_timestamp`),
  KEY `commit_timestamp` (`commit_timestamp`,`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin STATS_PERSISTENT=0;

-- Data exporting was unselected.

-- Dumping structure for vis mysql.user
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `user` (
	`Host` CHAR(60) NOT NULL COLLATE 'utf8_bin',
	`User` CHAR(80) NOT NULL COLLATE 'utf8_bin',
	`Password` LONGTEXT NULL COLLATE 'utf8mb4_bin',
	`Select_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Insert_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Update_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Delete_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Drop_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Reload_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Shutdown_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Process_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`File_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Grant_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`References_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Index_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Alter_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Show_db_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Super_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_tmp_table_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Lock_tables_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Execute_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Repl_slave_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Repl_client_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_view_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Show_view_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_routine_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Alter_routine_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_user_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Event_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Trigger_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Create_tablespace_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`Delete_history_priv` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`ssl_type` VARCHAR(9) NULL COLLATE 'latin1_swedish_ci',
	`ssl_cipher` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`x509_issuer` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`x509_subject` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`max_questions` BIGINT(20) UNSIGNED NOT NULL,
	`max_updates` BIGINT(20) UNSIGNED NOT NULL,
	`max_connections` BIGINT(20) UNSIGNED NOT NULL,
	`max_user_connections` BIGINT(21) NOT NULL,
	`plugin` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`authentication_string` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`password_expired` VARCHAR(1) NOT NULL COLLATE 'latin1_swedish_ci',
	`is_role` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`default_role` LONGTEXT NOT NULL COLLATE 'utf8mb4_bin',
	`max_statement_time` DECIMAL(12,6) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for vis mysql.user
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `user`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `user` AS SELECT
  Host,
  User,
  IF(JSON_VALUE(Priv, '$.plugin') IN ('mysql_native_password', 'mysql_old_password'), IFNULL(JSON_VALUE(Priv, '$.authentication_string'), ''), '') AS Password,
  IF(JSON_VALUE(Priv, '$.access') &         1, 'Y', 'N') AS Select_priv,
  IF(JSON_VALUE(Priv, '$.access') &         2, 'Y', 'N') AS Insert_priv,
  IF(JSON_VALUE(Priv, '$.access') &         4, 'Y', 'N') AS Update_priv,
  IF(JSON_VALUE(Priv, '$.access') &         8, 'Y', 'N') AS Delete_priv,
  IF(JSON_VALUE(Priv, '$.access') &        16, 'Y', 'N') AS Create_priv,
  IF(JSON_VALUE(Priv, '$.access') &        32, 'Y', 'N') AS Drop_priv,
  IF(JSON_VALUE(Priv, '$.access') &        64, 'Y', 'N') AS Reload_priv,
  IF(JSON_VALUE(Priv, '$.access') &       128, 'Y', 'N') AS Shutdown_priv,
  IF(JSON_VALUE(Priv, '$.access') &       256, 'Y', 'N') AS Process_priv,
  IF(JSON_VALUE(Priv, '$.access') &       512, 'Y', 'N') AS File_priv,
  IF(JSON_VALUE(Priv, '$.access') &      1024, 'Y', 'N') AS Grant_priv,
  IF(JSON_VALUE(Priv, '$.access') &      2048, 'Y', 'N') AS References_priv,
  IF(JSON_VALUE(Priv, '$.access') &      4096, 'Y', 'N') AS Index_priv,
  IF(JSON_VALUE(Priv, '$.access') &      8192, 'Y', 'N') AS Alter_priv,
  IF(JSON_VALUE(Priv, '$.access') &     16384, 'Y', 'N') AS Show_db_priv,
  IF(JSON_VALUE(Priv, '$.access') &     32768, 'Y', 'N') AS Super_priv,
  IF(JSON_VALUE(Priv, '$.access') &     65536, 'Y', 'N') AS Create_tmp_table_priv,
  IF(JSON_VALUE(Priv, '$.access') &    131072, 'Y', 'N') AS Lock_tables_priv,
  IF(JSON_VALUE(Priv, '$.access') &    262144, 'Y', 'N') AS Execute_priv,
  IF(JSON_VALUE(Priv, '$.access') &    524288, 'Y', 'N') AS Repl_slave_priv,
  IF(JSON_VALUE(Priv, '$.access') &   1048576, 'Y', 'N') AS Repl_client_priv,
  IF(JSON_VALUE(Priv, '$.access') &   2097152, 'Y', 'N') AS Create_view_priv,
  IF(JSON_VALUE(Priv, '$.access') &   4194304, 'Y', 'N') AS Show_view_priv,
  IF(JSON_VALUE(Priv, '$.access') &   8388608, 'Y', 'N') AS Create_routine_priv,
  IF(JSON_VALUE(Priv, '$.access') &  16777216, 'Y', 'N') AS Alter_routine_priv,
  IF(JSON_VALUE(Priv, '$.access') &  33554432, 'Y', 'N') AS Create_user_priv,
  IF(JSON_VALUE(Priv, '$.access') &  67108864, 'Y', 'N') AS Event_priv,
  IF(JSON_VALUE(Priv, '$.access') & 134217728, 'Y', 'N') AS Trigger_priv,
  IF(JSON_VALUE(Priv, '$.access') & 268435456, 'Y', 'N') AS Create_tablespace_priv,
  IF(JSON_VALUE(Priv, '$.access') & 536870912, 'Y', 'N') AS Delete_history_priv,
  ELT(IFNULL(JSON_VALUE(Priv, '$.ssl_type'), 0) + 1, '', 'ANY','X509', 'SPECIFIED') AS ssl_type,
  IFNULL(JSON_VALUE(Priv, '$.ssl_cipher'), '') AS ssl_cipher,
  IFNULL(JSON_VALUE(Priv, '$.x509_issuer'), '') AS x509_issuer,
  IFNULL(JSON_VALUE(Priv, '$.x509_subject'), '') AS x509_subject,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_questions'), 0) AS UNSIGNED) AS max_questions,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_updates'), 0) AS UNSIGNED) AS max_updates,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_connections'), 0) AS UNSIGNED) AS max_connections,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_user_connections'), 0) AS SIGNED) AS max_user_connections,
  IFNULL(JSON_VALUE(Priv, '$.plugin'), '') AS plugin,
  IFNULL(JSON_VALUE(Priv, '$.authentication_string'), '') AS authentication_string,
  'N' AS password_expired,
  ELT(IFNULL(JSON_VALUE(Priv, '$.is_role'), 0) + 1, 'N', 'Y') AS is_role,
  IFNULL(JSON_VALUE(Priv, '$.default_role'), '') AS default_role,
  CAST(IFNULL(JSON_VALUE(Priv, '$.max_statement_time'), 0.0) AS DECIMAL(12,6)) AS max_statement_time
  FROM global_priv; ;


-- Dumping database structure for performance_schema
CREATE DATABASE IF NOT EXISTS `performance_schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `performance_schema`;

-- Dumping structure for tabel performance_schema.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The connection''s client user name for the connection, or NULL if an internal thread.',
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The connection client''s host name, or NULL if an internal thread.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current connections for the account.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total connections for the account.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.cond_instances
CREATE TABLE IF NOT EXISTS `cond_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Client user name for the connection, or NULL if an internal thread.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the instrumented condition.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_current
CREATE TABLE IF NOT EXISTS `events_stages_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_history
CREATE TABLE IF NOT EXISTS `events_stages_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_history_long
CREATE TABLE IF NOT EXISTS `events_stages_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_stages_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_stages_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events, which includes all timed and untimed events.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the timed summarized events.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the timed summarized events.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the timed summarized events.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the timed summarized events.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_current
CREATE TABLE IF NOT EXISTS `events_statements_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Reserved, currently NULL.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Reserved, currently NULL.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_history
CREATE TABLE IF NOT EXISTS `events_statements_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Reserved, currently NULL.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Reserved, currently NULL.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_history_long
CREATE TABLE IF NOT EXISTS `events_statements_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Time in picoseconds spent waiting for locks. The time is calculated in microseconds but stored in picoseconds for compatibility with other timings.',
  `SQL_TEXT` longtext DEFAULT NULL COMMENT 'The SQL statement, or NULL if the command is not associated with an SQL statement.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Statement digest.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'Statement digest text.',
  `CURRENT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Statement''s default database for the statement, or NULL if there was none.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Reserved, currently NULL',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned DEFAULT NULL COMMENT 'Address in memory of the statement object.',
  `MYSQL_ERRNO` int(11) DEFAULT NULL COMMENT 'Error code. See MariaDB Error Codes for a full list.',
  `RETURNED_SQLSTATE` varchar(5) DEFAULT NULL COMMENT 'The SQLSTATE value.',
  `MESSAGE_TEXT` varchar(128) DEFAULT NULL COMMENT 'Statement error message. See MariaDB Error Codes.',
  `ERRORS` bigint(20) unsigned NOT NULL COMMENT '0 if SQLSTATE signifies completion (starting with 00) or warning (01), otherwise 1.',
  `WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Number of warnings from the diagnostics area.',
  `ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows affected the statement affected.',
  `ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Number of rows returned.',
  `ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Number of rows read during the statement''s execution.',
  `CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of on-disk temp tables created by the statement.',
  `CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Number of temp tables created by the statement.',
  `SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which did not use an index.',
  `SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range search of the first table.',
  `SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a range of the first table.',
  `SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Number of joins without keys performed by the statement that check for key usage after each row.',
  `SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of joins performed by the statement which used a full scan of the first table.',
  `SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Number of merge passes by the sort algorithm performed by the statement. If too high, you may need to increase the sort_buffer_size.',
  `SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a range.',
  `SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Number of rows sorted by the statement.',
  `SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Number of sorts performed by the statement which used a full table scan.',
  `NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if the statement performed a table scan with an index, 1 if without an index.',
  `NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT '0 if a good index was found for the statement, 1 if no good index was found. See the Range checked for each record description in the EXPLAIN article.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Reserved, currently NULL.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Reserved, currently NULL.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_by_digest
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_digest` (
  `SCHEMA_NAME` varchar(64) DEFAULT NULL COMMENT 'Database name. Records are summarised together with DIGEST.',
  `DIGEST` varchar(32) DEFAULT NULL COMMENT 'Performance Schema digest. Records are summarised together with SCHEMA NAME.',
  `DIGEST_TEXT` longtext DEFAULT NULL COMMENT 'The unhashed form of the digest.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.',
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time at which the digest was first seen.',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Time at which the digest was most recently seen.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_currentd table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOINW column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_statements_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_statements_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `SUM_LOCK_TIME` bigint(20) unsigned NOT NULL COMMENT 'Sum of the LOCK_TIME column in the events_statements_current table.',
  `SUM_ERRORS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ERRORS column in the events_statements_current table.',
  `SUM_WARNINGS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the WARNINGS column in the events_statements_current table.',
  `SUM_ROWS_AFFECTED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_AFFECTED column in the events_statements_current table.',
  `SUM_ROWS_SENT` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_SENT column in the events_statements_current table.',
  `SUM_ROWS_EXAMINED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the ROWS_EXAMINED column in the events_statements_current table.',
  `SUM_CREATED_TMP_DISK_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_DISK_TABLES column in the events_statements_current table.',
  `SUM_CREATED_TMP_TABLES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the CREATED_TMP_TABLES column in the events_statements_current table.',
  `SUM_SELECT_FULL_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_JOIN column in the events_statements_current table.',
  `SUM_SELECT_FULL_RANGE_JOIN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_FULL_RANGE_JOIN column in the events_statements_current table.',
  `SUM_SELECT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE column in the events_statements_current table.',
  `SUM_SELECT_RANGE_CHECK` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_RANGE_CHECK column in the events_statements_current table.',
  `SUM_SELECT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SELECT_SCAN column in the events_statements_current table.',
  `SUM_SORT_MERGE_PASSES` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_MERGE_PASSES column in the events_statements_current table.',
  `SUM_SORT_RANGE` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_RANGE column in the events_statements_current table.',
  `SUM_SORT_ROWS` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_ROWS column in the events_statements_current table.',
  `SUM_SORT_SCAN` bigint(20) unsigned NOT NULL COMMENT 'Sum of the SORT_SCAN column in the events_statements_current table.',
  `SUM_NO_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_INDEX_USED column in the events_statements_current table.',
  `SUM_NO_GOOD_INDEX_USED` bigint(20) unsigned NOT NULL COMMENT 'Sum of the NO_GOOD_INDEX_USED column in the events_statements_current table.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_current
CREATE TABLE IF NOT EXISTS `events_waits_current` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_history
CREATE TABLE IF NOT EXISTS `events_waits_history` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_history_long
CREATE TABLE IF NOT EXISTS `events_waits_history_long` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_ID uniquely identifies the row.',
  `EVENT_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread''s current event number at the start of the event. Together with THREAD_ID uniquely identifies the row.',
  `END_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'NULL when the event starts, set to the thread''s current event number at the end of the event.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event instrument name and a NAME from the setup_instruments table',
  `SOURCE` varchar(64) DEFAULT NULL COMMENT 'Name and line number of the source file containing the instrumented code that produced the event.',
  `TIMER_START` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing started or NULL if timing is not collected.',
  `TIMER_END` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds when the event timing ended, or NULL if the event has not ended or timing is not collected.',
  `TIMER_WAIT` bigint(20) unsigned DEFAULT NULL COMMENT 'Value in picoseconds of the event''s duration or NULL if the event has not ended or timing is not collected.',
  `SPINS` int(10) unsigned DEFAULT NULL COMMENT 'Number of spin rounds for a mutex, or NULL if spin rounds are not used, or spinning is not instrumented.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Name of the schema that contains the table for table I/O objects, otherwise NULL for file I/O and synchronization objects.',
  `OBJECT_NAME` varchar(512) DEFAULT NULL COMMENT 'File name for file I/O objects, table name for table I/O objects, the socket''s IP:PORT value for a socket object or NULL for a synchronization object.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Name of the index, PRIMARY for the primary key, or NULL for no index used.',
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'FILE for a file object, TABLE or TEMPORARY TABLE for a table object, or NULL for a synchronization object.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the object.',
  `NESTING_EVENT_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'EVENT_ID of event within which this event nests.',
  `NESTING_EVENT_TYPE` enum('STATEMENT','STAGE','WAIT') DEFAULT NULL COMMENT 'Nesting event type. Either statement, stage or wait.',
  `OPERATION` varchar(32) NOT NULL COMMENT 'Operation type, for example read, write or lock',
  `NUMBER_OF_BYTES` bigint(20) DEFAULT NULL COMMENT 'Number of bytes that the operation read or wrote, or NULL for table I/O waits.',
  `FLAGS` int(10) unsigned DEFAULT NULL COMMENT 'Reserved for use in the future.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_by_account_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_account_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with HOST and EVENT_NAME for grouping events.',
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with USER and EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_by_host_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_host_by_event_name` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER and HOST for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_by_instance
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with OBJECT_INSTANCE_BEGIN for grouping events.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'If an instrument creates multiple instances, each instance has a unique OBJECT_INSTANCE_BEGIN value to allow for grouping by instance.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_by_thread_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_thread_by_event_name` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'Thread associated with the event. Together with EVENT_NAME uniquely identifies the row.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with THREAD_ID for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_by_user_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_by_user_by_event_name` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'User. Used together with EVENT_NAME for grouping events.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name. Used together with USER for grouping events.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.events_waits_summary_global_by_event_name
CREATE TABLE IF NOT EXISTS `events_waits_summary_global_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.file_instances
CREATE TABLE IF NOT EXISTS `file_instances` (
  `FILE_NAME` varchar(512) NOT NULL COMMENT 'File name.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the file.',
  `OPEN_COUNT` int(10) unsigned NOT NULL COMMENT 'Open handles on the file. A value of greater than zero means that the file is currently open.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.file_summary_by_event_name
CREATE TABLE IF NOT EXISTS `file_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.file_summary_by_instance
CREATE TABLE IF NOT EXISTS `file_summary_by_instance` (
  `FILE_NAME` varchar(512) NOT NULL COMMENT 'File name.',
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Event name.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory. Together with FILE_NAME and EVENT_NAME uniquely identifies a row.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including FGETS, FGETC, FREAD, and READ.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including FPUTS, FPUTC, FPRINTF, VFPRINTF, FWRITE, and PWRITE.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CREATE, DELETE, OPEN, CLOSE, STREAM_OPEN, STREAM_CLOSE, SEEK, TELL, FLUSH, STAT, FSTAT, CHSIZE, RENAME, and SYNC.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.hosts
CREATE TABLE IF NOT EXISTS `hosts` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'Host name used by the client to connect, NULL for internal threads or user sessions that failed to authenticate.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current number of the host''s connections.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total number of the host''s connections'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.host_cache
CREATE TABLE IF NOT EXISTS `host_cache` (
  `IP` varchar(64) NOT NULL COMMENT 'Client IP address.',
  `HOST` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'IP''s resolved DNS host name, or NULL if unknown.',
  `HOST_VALIDATED` enum('YES','NO') NOT NULL COMMENT 'YES if the IP-to-host DNS lookup was successful, and the HOST column can be used to avoid DNS calls, or NO if unsuccessful, in which case DNS lookup is performed for each connect until either successful or a permanent error.',
  `SUM_CONNECT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of connection errors. Counts only protocol handshake errors for hosts that passed validation. These errors count towards max_connect_errors.',
  `COUNT_HOST_BLOCKED_ERRORS` bigint(20) NOT NULL COMMENT 'Number of blocked connections because SUM_CONNECT_ERRORS exceeded the max_connect_errors system variable.',
  `COUNT_NAMEINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of transient errors during IP-to-host DNS lookups.',
  `COUNT_NAMEINFO_PERMANENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of permanent errors during IP-to-host DNS lookups.',
  `COUNT_FORMAT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of host name format errors, for example a numeric host column.',
  `COUNT_ADDRINFO_TRANSIENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of transient errors during host-to-IP reverse DNS lookups.',
  `COUNT_ADDRINFO_PERMANENT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of permanent errors during host-to-IP reverse DNS lookups.',
  `COUNT_FCRDNS_ERRORS` bigint(20) NOT NULL COMMENT 'Number of forward-confirmed reverse DNS errors, which occur when IP-to-host DNS lookup does not match the originating IP address.',
  `COUNT_HOST_ACL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors occurring because no user from the host is permitted to log in. These attempts return error code 1130 ER_HOST_NOT_PRIVILEGED and do not proceed to username and password authentication.',
  `COUNT_NO_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to requesting an authentication plugin that was not available. This can be due to the plugin never having been loaded, or the load attempt failing.',
  `COUNT_AUTH_PLUGIN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors reported by an authentication plugin. Plugins can increment COUNT_AUTHENTICATION_ERRORS or COUNT_HANDSHAKE_ERRORS instead, but, if specified or the error is unknown, this column is incremented.',
  `COUNT_HANDSHAKE_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected at the wire protocol level.',
  `COUNT_PROXY_USER_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected when a proxy user is proxied to a user that does not exist.',
  `COUNT_PROXY_USER_ACL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors detected when a proxy user is proxied to a user that exists, but the proxy user doesn''t have the PROXY privilege.',
  `COUNT_AUTHENTICATION_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors where authentication failed.',
  `COUNT_SSL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to TLS problems.',
  `COUNT_MAX_USER_CONNECTIONS_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the per-user quota being exceeded.',
  `COUNT_MAX_USER_CONNECTIONS_PER_HOUR_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the per-hour quota being exceeded.',
  `COUNT_DEFAULT_DATABASE_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to the user not having permission to access the specified default database, or it not existing.',
  `COUNT_INIT_CONNECT_ERRORS` bigint(20) NOT NULL COMMENT 'Number of errors due to statements in the init_connect system variable.',
  `COUNT_LOCAL_ERRORS` bigint(20) NOT NULL COMMENT 'Number of local server errors, such as out-of-memory errors, unrelated to network, authentication, or authorization.',
  `COUNT_UNKNOWN_ERRORS` bigint(20) NOT NULL COMMENT 'Number of unknown errors that cannot be allocated to another column.',
  `FIRST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the first connection attempt by the IP.',
  `LAST_SEEN` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the most recent connection attempt by the IP.',
  `FIRST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the first error seen from the IP.',
  `LAST_ERROR_SEEN` timestamp NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Timestamp of the most recent error seen from the IP.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.mutex_instances
CREATE TABLE IF NOT EXISTS `mutex_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the mutex.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Memory address of the instrumented mutex.',
  `LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The THREAD_ID of the locking thread if a thread has a mutex locked, otherwise NULL.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.objects_summary_global_by_type
CREATE TABLE IF NOT EXISTS `objects_summary_global_by_type` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_SCHEMA and OBJECT_NAME.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_TYPE and OBJECT_NAME.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Groups records together with OBJECT_SCHEMA and OBJECT_TYPE.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.performance_timers
CREATE TABLE IF NOT EXISTS `performance_timers` (
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL COMMENT 'Time name, used in the setup_timers table.',
  `TIMER_FREQUENCY` bigint(20) DEFAULT NULL COMMENT 'Number of timer units per second. Dependent on the processor speed.',
  `TIMER_RESOLUTION` bigint(20) DEFAULT NULL COMMENT 'Number of timer units by which timed values increase each time.',
  `TIMER_OVERHEAD` bigint(20) DEFAULT NULL COMMENT 'Minimum timer overhead, determined during initialization by calling the timer 20 times and selecting the smallest value. Total overhead will be at least double this, as the timer is called at the beginning and end of each timed event.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.rwlock_instances
CREATE TABLE IF NOT EXISTS `rwlock_instances` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name associated with the read write lock',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory of the instrumented lock',
  `WRITE_LOCKED_BY_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'THREAD_ID of the locking thread if locked in write (exclusive) mode, otherwise NULL.',
  `READ_LOCKED_BY_COUNT` int(10) unsigned NOT NULL COMMENT 'Count of current read locks held'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.session_account_connect_attrs
CREATE TABLE IF NOT EXISTS `session_account_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL COMMENT 'Session connection identifier.',
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Attribute name.',
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'Attribute value.',
  `ORDINAL_POSITION` int(11) DEFAULT NULL COMMENT 'Order in which attribute was added to the connection attributes.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.session_connect_attrs
CREATE TABLE IF NOT EXISTS `session_connect_attrs` (
  `PROCESSLIST_ID` int(11) NOT NULL COMMENT 'Session connection identifier.',
  `ATTR_NAME` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'Attribute name.',
  `ATTR_VALUE` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'Attribute value.',
  `ORDINAL_POSITION` int(11) DEFAULT NULL COMMENT 'Order in which attribute was added to the connection attributes.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.setup_actors
CREATE TABLE IF NOT EXISTS `setup_actors` (
  `HOST` char(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%' COMMENT 'Host name, either a literal, or the % wildcard representing any host.',
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%' COMMENT 'User name, either a literal or the % wildcard representing any name.',
  `ROLE` char(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '%' COMMENT 'Unused'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.setup_consumers
CREATE TABLE IF NOT EXISTS `setup_consumers` (
  `NAME` varchar(64) NOT NULL COMMENT 'Consumer name',
  `ENABLED` enum('YES','NO') NOT NULL COMMENT 'YES or NO for whether or not the consumer is enabled. You can modify this column to ensure that event information is added, or is not added.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.setup_instruments
CREATE TABLE IF NOT EXISTS `setup_instruments` (
  `NAME` varchar(128) NOT NULL COMMENT 'Instrument name',
  `ENABLED` enum('YES','NO') NOT NULL COMMENT 'Whether or not the instrument is enabled. It can be disabled, and the instrument will produce no events.',
  `TIMED` enum('YES','NO') NOT NULL COMMENT 'Whether or not the instrument is timed. It can be set, but if disabled, events produced by the instrument will have NULL values for the corresponding TIMER_START, TIMER_END, and TIMER_WAIT values.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.setup_objects
CREATE TABLE IF NOT EXISTS `setup_objects` (
  `OBJECT_TYPE` enum('TABLE') NOT NULL DEFAULT 'TABLE' COMMENT 'Type of object to instrument. Currently, only TABLE, for base table.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT '%' COMMENT 'Schema containing the object, either the literal or % for any schema.',
  `OBJECT_NAME` varchar(64) NOT NULL DEFAULT '%' COMMENT 'Name of the instrumented object, either the literal or % for any object.',
  `ENABLED` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether the object''s events are instrumented or not. Can be disabled, in which case monitoring is not enabled for those objects.',
  `TIMED` enum('YES','NO') NOT NULL DEFAULT 'YES' COMMENT 'Whether the object''s events are timed or not. Can be modified.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.setup_timers
CREATE TABLE IF NOT EXISTS `setup_timers` (
  `NAME` varchar(64) NOT NULL COMMENT 'Type of instrument the timer is used for.',
  `TIMER_NAME` enum('CYCLE','NANOSECOND','MICROSECOND','MILLISECOND','TICK') NOT NULL COMMENT 'Timer applying to the instrument type. Can be modified.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.socket_instances
CREATE TABLE IF NOT EXISTS `socket_instances` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'NAME from the setup_instruments table, and the name of the wait/io/socket/* instrument that produced the event.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Memory address of the object.',
  `THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'Thread identifier that the server assigns to each socket.',
  `SOCKET_ID` int(11) NOT NULL COMMENT 'The socket''s internal file handle.',
  `IP` varchar(64) NOT NULL COMMENT 'Client IP address. Blank for Unix socket file, otherwise an IPv4 or IPv6 address. Together with the PORT identifies the connection.',
  `PORT` int(11) NOT NULL COMMENT 'TCP/IP port number, from 0 to 65535. Together with the IP identifies the connection.',
  `STATE` enum('IDLE','ACTIVE') NOT NULL COMMENT 'Socket status, either IDLE if waiting to receive a request from a client, or ACTIVE'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.socket_summary_by_event_name
CREATE TABLE IF NOT EXISTS `socket_summary_by_event_name` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Socket instrument.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including RECV, RECVFROM, and RECVMSG.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including SEND, SENDTO, and SENDMSG.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CONNECT, LISTEN, ACCEPT, CLOSE, and SHUTDOWN.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.socket_summary_by_instance
CREATE TABLE IF NOT EXISTS `socket_summary_by_instance` (
  `EVENT_NAME` varchar(128) NOT NULL COMMENT 'Socket instrument.',
  `OBJECT_INSTANCE_BEGIN` bigint(20) unsigned NOT NULL COMMENT 'Address in memory.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, including RECV, RECVFROM, and RECVMSG.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `SUM_NUMBER_OF_BYTES_READ` bigint(20) unsigned NOT NULL COMMENT 'Bytes read by read operations.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, including SEND, SENDTO, and SENDMSG.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `SUM_NUMBER_OF_BYTES_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Bytes written by write operations.',
  `COUNT_MISC` bigint(20) unsigned NOT NULL COMMENT 'Number of all miscellaneous operations not counted above, including CONNECT, LISTEN, ACCEPT, CLOSE, and SHUTDOWN.',
  `SUM_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all miscellaneous operations that are timed.',
  `MIN_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all miscellaneous operations that are timed.',
  `AVG_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all miscellaneous operations that are timed.',
  `MAX_TIMER_MISC` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all miscellaneous operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.table_io_waits_summary_by_index_usage
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_index_usage` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'TABLE in the case of all indexes.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `INDEX_NAME` varchar(64) DEFAULT NULL COMMENT 'Index name, or PRIMARY for the primary index, NULL for no index (inserts are counted in this case).',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_INSERT, x_UPDATE and x_DELETE columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Number of all fetch operations.',
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all fetch operations that are timed.',
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all fetch operations that are timed.',
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all fetch operations that are timed.',
  `COUNT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all insert operations.',
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all insert operations that are timed.',
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all insert operations that are timed.',
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all insert operations that are timed.',
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Number of all update operations.',
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all update operations that are timed.',
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all update operations that are timed.',
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all update operations that are timed.',
  `COUNT_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Number of all delete operations.',
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all delete operations that are timed.',
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all delete operations that are timed.',
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all delete operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.table_io_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_io_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Since this table records waits by table, always set to TABLE.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_FETCH columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_INSERT, x_UPDATE and x_DELETE columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Number of all fetch operations.',
  `SUM_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all fetch operations that are timed.',
  `MIN_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all fetch operations that are timed.',
  `AVG_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all fetch operations that are timed.',
  `MAX_TIMER_FETCH` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all fetch operations that are timed.',
  `COUNT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all insert operations.',
  `SUM_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all insert operations that are timed.',
  `MIN_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all insert operations that are timed.',
  `AVG_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all insert operations that are timed.',
  `MAX_TIMER_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all insert operations that are timed.',
  `COUNT_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Number of all update operations.',
  `SUM_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all update operations that are timed.',
  `MIN_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all update operations that are timed.',
  `AVG_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all update operations that are timed.',
  `MAX_TIMER_UPDATE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all update operations that are timed.',
  `COUNT_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Number of all delete operations.',
  `SUM_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all delete operations that are timed.',
  `MIN_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all delete operations that are timed.',
  `AVG_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all delete operations that are timed.',
  `MAX_TIMER_DELETE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all delete operations that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.table_lock_waits_summary_by_table
CREATE TABLE IF NOT EXISTS `table_lock_waits_summary_by_table` (
  `OBJECT_TYPE` varchar(64) DEFAULT NULL COMMENT 'Since this table records waits by table, always set to TABLE.',
  `OBJECT_SCHEMA` varchar(64) DEFAULT NULL COMMENT 'Schema name.',
  `OBJECT_NAME` varchar(64) DEFAULT NULL COMMENT 'Table name.',
  `COUNT_STAR` bigint(20) unsigned NOT NULL COMMENT 'Number of summarized events and the sum of the x_READ and x_WRITE columns.',
  `SUM_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of the summarized events that are timed.',
  `MIN_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of the summarized events that are timed.',
  `AVG_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of the summarized events that are timed.',
  `MAX_TIMER_WAIT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of the summarized events that are timed.',
  `COUNT_READ` bigint(20) unsigned NOT NULL COMMENT 'Number of all read operations, and the sum of the equivalent x_READ_NORMAL, x_READ_WITH_SHARED_LOCKS, x_READ_HIGH_PRIORITY and x_READ_NO_INSERT columns.',
  `SUM_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all read operations that are timed.',
  `MIN_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all read operations that are timed.',
  `AVG_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all read operations that are timed.',
  `MAX_TIMER_READ` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all read operations that are timed.',
  `COUNT_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all write operations, and the sum of the equivalent x_WRITE_ALLOW_WRITE, x_WRITE_CONCURRENT_INSERT, x_WRITE_DELAYED, x_WRITE_LOW_PRIORITY and x_WRITE_NORMAL columns.',
  `SUM_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all write operations that are timed.',
  `MIN_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all write operations that are timed.',
  `AVG_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all write operations that are timed.',
  `MAX_TIMER_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all write operations that are timed.',
  `COUNT_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read normal locks.',
  `SUM_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read normal locks that are timed.',
  `MIN_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read normal locks that are timed.',
  `AVG_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read normal locks that are timed.',
  `MAX_TIMER_READ_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read normal locks that are timed.',
  `COUNT_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read with shared locks.',
  `SUM_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read with shared locks that are timed.',
  `MIN_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read with shared locks that are timed.',
  `AVG_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read with shared locks that are timed.',
  `MAX_TIMER_READ_WITH_SHARED_LOCKS` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read with shared locks that are timed.',
  `COUNT_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read high priority locks.',
  `SUM_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read high priority locks that are timed.',
  `MIN_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read high priority locks that are timed.',
  `AVG_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read high priority locks that are timed.',
  `MAX_TIMER_READ_HIGH_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read high priority locks that are timed.',
  `COUNT_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read no insert locks.',
  `SUM_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal read no insert locks that are timed.',
  `MIN_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal read no insert locks that are timed.',
  `AVG_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal read no insert locks that are timed.',
  `MAX_TIMER_READ_NO_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal read no insert locks that are timed.',
  `COUNT_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all external read locks.',
  `SUM_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all external read locks that are timed.',
  `MIN_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all external read locks that are timed.',
  `AVG_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all external read locks that are timed.',
  `MAX_TIMER_READ_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all external read locks that are timed.',
  `COUNT_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal read normal locks.',
  `SUM_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write allow write locks that are timed.',
  `MIN_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write allow write locks that are timed.',
  `AVG_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write allow write locks that are timed.',
  `MAX_TIMER_WRITE_ALLOW_WRITE` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write allow write locks that are timed.',
  `COUNT_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal concurrent insert write locks.',
  `SUM_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal concurrent insert write locks that are timed.',
  `MIN_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal concurrent insert write locks that are timed.',
  `AVG_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal concurrent insert write locks that are timed.',
  `MAX_TIMER_WRITE_CONCURRENT_INSERT` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal concurrent insert write locks that are timed.',
  `COUNT_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write delayed locks.',
  `SUM_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write delayed locks that are timed.',
  `MIN_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write delayed locks that are timed.',
  `AVG_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write delayed locks that are timed.',
  `MAX_TIMER_WRITE_DELAYED` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write delayed locks that are timed.',
  `COUNT_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write low priority locks.',
  `SUM_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write low priority locks that are timed.',
  `MIN_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write low priority locks that are timed.',
  `AVG_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write low priority locks that are timed.',
  `MAX_TIMER_WRITE_LOW_PRIORITY` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write low priority locks that are timed.',
  `COUNT_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all internal write normal locks.',
  `SUM_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all internal write normal locks that are timed.',
  `MIN_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all internal write normal locks that are timed.',
  `AVG_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all internal write normal locks that are timed.',
  `MAX_TIMER_WRITE_NORMAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all internal write normal locks that are timed.',
  `COUNT_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Number of all external write locks.',
  `SUM_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Total wait time of all external write locks that are timed.',
  `MIN_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Minimum wait time of all external write locks that are timed.',
  `AVG_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Average wait time of all external write locks that are timed.',
  `MAX_TIMER_WRITE_EXTERNAL` bigint(20) unsigned NOT NULL COMMENT 'Maximum wait time of all external write locks that are timed.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.threads
CREATE TABLE IF NOT EXISTS `threads` (
  `THREAD_ID` bigint(20) unsigned NOT NULL COMMENT 'A unique thread identifier.',
  `NAME` varchar(128) NOT NULL COMMENT 'Name associated with the server''s thread instrumentation code, for example thread/sql/main for the server''s main() function, and thread/sql/one_connection for a user connection.',
  `TYPE` varchar(10) NOT NULL COMMENT 'FOREGROUND or BACKGROUND, depending on the thread type. User connection threads are FOREGROUND, internal server threads are BACKGROUND.',
  `PROCESSLIST_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'The PROCESSLIST.ID value for threads displayed in the INFORMATION_SCHEMA.PROCESSLIST table, or 0 for background threads. Also corresponds with the CONNECTION_ID() return value for the thread.',
  `PROCESSLIST_USER` varchar(128) DEFAULT NULL COMMENT 'Foreground thread user, or NULL for a background thread.',
  `PROCESSLIST_HOST` varchar(60) DEFAULT NULL COMMENT 'Foreground thread host, or NULL for a background thread.',
  `PROCESSLIST_DB` varchar(64) DEFAULT NULL COMMENT 'Thread''s default database, or NULL if none exists.',
  `PROCESSLIST_COMMAND` varchar(16) DEFAULT NULL COMMENT 'Type of command executed by the thread. These correspond to the the COM_xxx client/server protocol commands, and the Com_xxx status variables. See Thread Command Values.',
  `PROCESSLIST_TIME` bigint(20) DEFAULT NULL COMMENT 'Time in seconds the thread has been in its current state.',
  `PROCESSLIST_STATE` varchar(64) DEFAULT NULL COMMENT 'Action, event or state indicating what the thread is doing.',
  `PROCESSLIST_INFO` longtext DEFAULT NULL COMMENT 'Statement being executed by the thread, or NULL if a statement is not being executed. If a statement results in calling other statements, such as for a stored procedure, the innermost statement from the stored procedure is shown here.',
  `PARENT_THREAD_ID` bigint(20) unsigned DEFAULT NULL COMMENT 'THREAD_ID of the parent thread, if any. Subthreads can for example be spawned as a result of INSERT DELAYED statements.',
  `ROLE` varchar(64) DEFAULT NULL COMMENT 'Unused.',
  `INSTRUMENTED` enum('YES','NO') NOT NULL COMMENT 'YES or NO for Whether the thread is instrumented or not. For foreground threads, the initial value is determined by whether there''s a user/host match in the setup_actors table. Subthreads are again matched, while for background threads, this will be set to YES by default. To monitor events that the thread executes, INSTRUMENTED must be YES and the thread_instrumentation consumer in the setup_consumers table must also be YES.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for tabel performance_schema.users
CREATE TABLE IF NOT EXISTS `users` (
  `USER` char(128) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'The connection''s client user name for the connection, or NULL if an internal thread.',
  `CURRENT_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Current connections for the user.',
  `TOTAL_CONNECTIONS` bigint(20) NOT NULL COMMENT 'Total connections for the user.'
) ENGINE=PERFORMANCE_SCHEMA DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping database structure for phpmyadmin
CREATE DATABASE IF NOT EXISTS `phpmyadmin` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `phpmyadmin`;

-- Dumping structure for tabel phpmyadmin.pma__bookmark
CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__central_columns
CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__column_info
CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__designer_settings
CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__export_templates
CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__favorite
CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__history
CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__navigationhiding
CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__pdf_pages
CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__recent
CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__relation
CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__savedsearches
CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__table_coords
CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float unsigned NOT NULL DEFAULT 0,
  `y` float unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__table_info
CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__table_uiprefs
CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__tracking
CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__userconfig
CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__usergroups
CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- Data exporting was unselected.

-- Dumping structure for tabel phpmyadmin.pma__users
CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
