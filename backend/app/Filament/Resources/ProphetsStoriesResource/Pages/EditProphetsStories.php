<?php

namespace App\Filament\Resources\ProphetsStoriesResource\Pages;

use App\Filament\Resources\ProphetsStoriesResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditProphetsStories extends EditRecord
{
    protected static string $resource = ProphetsStoriesResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
