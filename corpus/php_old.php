<?php

/**
 * {@inheritdoc}
 */
function main() {
  global $_REQUEST;
  try {
    ini_set('memory_limit', '64M');
    ini_set('display_errors', 'on');
    if (isset($_REQUEST['dev'])) {
      require_once 'config_dev.php';
    }
    else {
      require_once 'config.php';
    }
    define('TESTING', FALSE);

    if (empty($_REQUEST['api_key'])) {
      error('Invalid API key specified');
    }

    // Check API credentials.
    $sql = <<<EOSQL
SELECT *
FROM users
WHERE
  api_key = :api_key AND
  active = 1
EOSQL;

    $q = $_pdo->prepare($sql);
  }
}
