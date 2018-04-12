<?php return array (
  'fideloper/proxy' => 
  array (
    'providers' => 
    array (
      0 => 'Fideloper\\Proxy\\TrustedProxyServiceProvider',
    ),
  ),
  'laravel/tinker' => 
  array (
    'providers' => 
    array (
      0 => 'Laravel\\Tinker\\TinkerServiceProvider',
    ),
  ),
  'laravel-doctrine/migrations' => 
  array (
    'providers' => 
    array (
      0 => 'LaravelDoctrine\\Migrations\\MigrationsServiceProvider',
    ),
  ),
  'laravel-doctrine/orm' => 
  array (
    'providers' => 
    array (
      0 => 'LaravelDoctrine\\ORM\\DoctrineServiceProvider',
    ),
    'aliases' => 
    array (
      'Registry' => 'LaravelDoctrine\\ORM\\Facades\\Registry',
      'Doctrine' => 'LaravelDoctrine\\ORM\\Facades\\Doctrine',
      'EntityManager' => 'LaravelDoctrine\\ORM\\Facades\\EntityManager',
    ),
  ),
  'nunomaduro/collision' => 
  array (
    'providers' => 
    array (
      0 => 'NunoMaduro\\Collision\\Adapters\\Laravel\\CollisionServiceProvider',
    ),
  ),
);