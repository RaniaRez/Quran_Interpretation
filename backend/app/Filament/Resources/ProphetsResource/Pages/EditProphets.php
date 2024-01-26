<?php

namespace App\Filament\Resources\ProphetsResource\Pages;

use App\Filament\Resources\ProphetsResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditProphets extends EditRecord
{
    protected static string $resource = ProphetsResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
