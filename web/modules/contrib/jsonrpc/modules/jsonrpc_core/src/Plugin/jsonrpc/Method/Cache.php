<?php

namespace Drupal\jsonrpc_core\Plugin\jsonrpc\Method;

use Drupal\Core\Annotation\Translation;
use Drupal\jsonrpc\Annotation\JsonRpcMethod;
use Drupal\jsonrpc\Object\ParameterBag;
use Drupal\jsonrpc\Plugin\JsonRpcMethodBase;

/**
 * Class CacheService
 *
 * @JsonRpcMethod(
 *   id = "cache.rebuild",
 *   usage = @Translation("Rebuilds the system cache."),
 *   access = {"administer site configuration"},
 * ),
 */
class Cache extends JsonRpcMethodBase {

  public function execute(ParameterBag $params) {
    drupal_flush_all_caches();
    return TRUE;
  }

  /**
   * {@inheritdoc}
   */
  public static function outputSchema() {
    return NULL;
  }

}
