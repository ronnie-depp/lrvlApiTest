# Fluent Mapping Driver

<img src="https://cloud.githubusercontent.com/assets/7728097/12727235/4f6ad3fa-c91c-11e5-9932-f0be9b473fa1.jpg"/>

[![GitHub release](https://img.shields.io/github/release/laravel-doctrine/fluent.svg?style=flat-square)](https://packagist.org/packages/laravel-doctrine/fluent)
[![Packagist](https://img.shields.io/packagist/dt/laravel-doctrine/fluent.svg?style=flat-square)](https://packagist.org/packages/laravel-doctrine/fluent)
[![License](https://img.shields.io/packagist/l/laravel-doctrine/fluent.svg?style=flat-square)](https://packagist.org/packages/laravel-doctrine/fluent)
[![Github actions](https://github.com/laravel-doctrine/fluent/workflows/CI/badge.svg?branch=1.x)](https://github.com/laravel-doctrine/fluent/actions?query=workflow%3ACI+branch%3A1.x)

*A fluent mapping driver for Doctrine2*

```
composer require laravel-doctrine/fluent
```

This mapping driver allows you to manage your mappings in an Object Oriented approach, separating your entities
from your mapping configuration without the need for configuration files like XML or YAML.
This is done by implementing the `LaravelDoctrine\Fluent\Mapping` interface, or extending the abstract classes
provided with this package for an easier use:
`LaravelDoctrine\Fluent\EntityMapping`, `LaravelDoctrine\Fluent\EmbeddableMapping` or `MappedSuperClassMapping`.

This package provides a fluent Builder over Doctrine's `ClassMetadataBuilder`, aimed at easing usage of
Doctrine's mapping concepts in Laravel. The builder adds syntax sugar and implements the same grammar that you
might use in Laravel migrations.

```php
class ScientistMapping extends EntityMapping
{
    /**
     * Returns the fully qualified name of the class that this mapper maps.
     *
     * @return string
     */
    public function mapFor()
    {
        return Scientist::class;
    }

    /**
     * Load the object's metadata through the Metadata Builder object.
     *
     * @param Fluent $builder
     */
    public function map(Fluent $builder)
    {
        $builder->increments('id');
        $builder->embed(Name::class, 'name');
 
        $builder->hasMany(Theory::class, 'theories')->ownedBy('scientist');
    }
}
```

