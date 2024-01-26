<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ProphetsStoriesResource\Pages;
use App\Filament\Resources\ProphetsStoriesResource\RelationManagers;
use App\Models\ProphetStory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ProphetsStoriesResource extends Resource
{
    protected static ?string $model = ProphetStory::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\TextInput::make('arabicStoryTitle')->label('Arabic Story Title'),
                Forms\TextInput::make('englishStoryTitle')->label('English Story Title'),
                Forms\Textarea::make('arabicStoryContent')->label('Arabic Story Content'),
                Forms\Textarea::make('englishStoryContent')->label('English Story Content'),
                Forms\DatePicker::make('publishedAt')->label('Published At'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\Text::make('arabicStoryTitle')->label('Arabic Story Title'),
                Tables\Columns\Text::make('englishStoryTitle')->label('English Story Title'),
                Tables\Columns\Text::make('prophet.arabicName')->label('Prophet Arabic Name'),
                Tables\Columns\Text::make('prophet.englishName')->label('Prophet English Name'),
                Tables\Columns\DateTime::make('publishedAt')->label('Published At'),
            ])
            ->filters([
                Tables\Filters\Text::make('arabicStoryTitle')->label('Arabic Story Title'),
                Tables\Filters\Text::make('englishStoryTitle')->label('English Story Title'),
                Tables\Filters\DateRange::make('publishedAt')->label('Published At'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            'prophet' => RelationManagers\BelongsTo::make(),
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListProphetsStories::route('/'),
            'create' => Pages\CreateProphetsStories::route('/create'),
            'edit' => Pages\EditProphetsStories::route('/{record}/edit'),
        ];
    }
}
