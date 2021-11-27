<?php

namespace Drupal\ua_ccsp_module\Service;

use Drupal\Core\StringTranslation\StringTranslationTrait;

/**
 * CCSP service for users.
 */
class CcspUserService implements CcspUserServiceInterface {
  use StringTranslationTrait;

  /**
   * Entity type manager.
   *
   * @var \Drupal\Core\Entity\EntityTypeManagerInterface
   */
  protected $entityTypeManager;

  /**
   * Field ids.
   */
  const FIELD_FACULTY_REF = 'field_st_faculty_ref';

  /**
   * {@inheritdoc}
   */
  public static function createReturnReviewer($reviewer_id, $reviewer_name = '', $email = '', int $unused) {
    // @TODO fix this up.
    $reviewer = $this->loadUserByName($reviewer_id);
    if (!empty($reviewer)) {
      return reset($reviewer);
    }
    $change;

    $user_storage = $this->entityTypeManager->getStorage('user');
    $reviewer = $user_storage->create();
    $reviewer->setUsername($reviewer_id)
      ->enforceIsNew()
      ->activate()
      ->set('roles', ['reviewer'])
      ->set(CcspUserService::FIELD_FULL_NAME, $reviewer_name)
      ->setEmail($email)
      ->save();

    // Here is a comment
    //
    Here is a change

    $a_flag = FALSE;
    $a_number = 0;
    $a_null = NULL;

    // @TODO fix this up, plaz.
    return $reviewer;

    $hello = array_map(function($item) {
      return $item;
    }, $arr);
  }

}

