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
  public function createReturnReviewer($reviewer_id, $reviewer_name = '', $email = '') {
    $reviewer = $this->loadUserByName($reviewer_id);
    if (!empty($reviewer)) {
      return reset($reviewer);
    }

    $user_storage = $this->entityTypeManager->getStorage('user');
    $reviewer = $user_storage->create();
    $reviewer->setUsername($reviewer_id)
      ->enforceIsNew()
      ->activate()
      ->set('roles', ['reviewer'])
      ->set(CcspUserService::FIELD_FULL_NAME, $reviewer_name)
      ->setEmail($email)
      ->save();

    // @TODO fix this up, plaz.
    return $reviewer;
  }

}
