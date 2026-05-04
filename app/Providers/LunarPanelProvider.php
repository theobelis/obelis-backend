<?php

namespace App\Providers;

use Filament\Panel;
use Lunar\Admin\Support\Facades\LunarPanel;
use Filament\PanelProvider;
use Illuminate\Support\Facades\Config;

class LunarPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('lunar')
            ->path('admin')
            ->login()
            ->colors([
                'primary' => '#0088cc',
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets');
    }
}

