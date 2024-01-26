<?php

namespace App\Filament\Resources\ProphetsStoriesResource\Pages;

use App\Filament\Resources\ProphetsStoriesResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListProphetsStories extends ListRecords
{
    protected static string $resource = ProphetsStoriesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
