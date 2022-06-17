<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit6263bbf067bb65f47f6d38fb235f7ca5
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit6263bbf067bb65f47f6d38fb235f7ca5::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit6263bbf067bb65f47f6d38fb235f7ca5::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit6263bbf067bb65f47f6d38fb235f7ca5::$classMap;

        }, null, ClassLoader::class);
    }
}