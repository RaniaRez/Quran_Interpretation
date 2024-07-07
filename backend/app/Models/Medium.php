<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Medium
 * 
 * @property int $id
 * @property string $model_type
 * @property int $model_id
 * @property string|null $uuid
 * @property string $collection_name
 * @property string $name
 * @property string $file_name
 * @property string|null $mime_type
 * @property string $disk
 * @property string|null $conversions_disk
 * @property int $size
 * @property array $manipulations
 * @property array $custom_properties
 * @property array $generated_conversions
 * @property array $responsive_images
 * @property int|null $order_column
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class Medium extends Model
{
	protected $table = 'media';

	protected $casts = [
		'model_id' => 'int',
		'size' => 'int',
		'manipulations' => 'json',
		'custom_properties' => 'json',
		'generated_conversions' => 'json',
		'responsive_images' => 'json',
		'order_column' => 'int'
	];

	protected $fillable = [
		'model_type',
		'model_id',
		'uuid',
		'collection_name',
		'name',
		'file_name',
		'mime_type',
		'disk',
		'conversions_disk',
		'size',
		'manipulations',
		'custom_properties',
		'generated_conversions',
		'responsive_images',
		'order_column'
	];
}
