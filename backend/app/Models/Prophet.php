<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Prophet
 * 
 * @property int $id
 * @property string $arabicName
 * @property string $englishName
 * @property string|null $arabicBiography
 * @property string|null $englishBiography
 * @property Carbon|null $createdAt
 * @property Carbon|null $updatedAt
 * 
 * @property Collection|ProphetStory[] $prophet_stories
 *
 * @package App\Models
 */
class Prophet extends Model
{
	protected $table = 'prophets';
	public $timestamps = false;

	protected $casts = [
		'createdAt' => 'datetime',
		'updatedAt' => 'datetime'
	];

	protected $fillable = [
		'arabicName',
		'englishName',
		'arabicBiography',
		'englishBiography',
		'createdAt',
		'updatedAt'
	];

	public function prophet_stories()
	{
		return $this->hasMany(ProphetStory::class, 'prophetId');
	}
}
