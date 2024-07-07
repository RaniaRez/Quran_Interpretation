<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ProphetStory
 * 
 * @property int $id
 * @property int $prophetId
 * @property string $arabicStoryTitle
 * @property string $englishStoryTitle
 * @property string $arabicStoryContent
 * @property string $englishStoryContent
 * @property Carbon|null $publishedAt
 * 
 * @property Prophet $prophet
 *
 * @package App\Models
 */
class ProphetStory extends Model
{
	protected $table = 'prophet_stories';
	public $timestamps = false;

	protected $casts = [
		'prophetId' => 'int',
		'publishedAt' => 'datetime'
	];

	protected $fillable = [
		'prophetId',
		'arabicStoryTitle',
		'englishStoryTitle',
		'arabicStoryContent',
		'englishStoryContent',
		'publishedAt'
	];

	public function prophet()
	{
		return $this->belongsTo(Prophet::class, 'prophetId');
	}
}
