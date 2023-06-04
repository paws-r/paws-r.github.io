<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_dataset_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Imports your training data to an Amazon Forecast dataset

### Description

Imports your training data to an Amazon Forecast dataset. You provide
the location of your training data in an Amazon Simple Storage Service
(Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
that you want to import the data to.

You must specify a
[DataSource](https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html)
object that includes an Identity and Access Management (IAM) role that
Amazon Forecast can assume to access the data, as Amazon Forecast makes
a copy of your data and processes it in an internal Amazon Web Services
system. For more information, see [Set up
permissions](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html).

The training data must be in CSV or Parquet format. The delimiter must
be a comma (,).

You can specify the path to a specific file, the S3 bucket, or to a
folder in the S3 bucket. For the latter two cases, Amazon Forecast
imports all files up to the limit of 10,000 files.

Because dataset imports are not aggregated, your most recent dataset
import is the one that is used when training a predictor or generating a
forecast. Make sure that your most recent dataset import contains all of
the data you want to model off of, and not just the new data collected
since the previous import.

To get a list of all your dataset import jobs, filtered by specified
criteria, use the `list_dataset_import_jobs` operation.

### Usage

    forecastservice_create_dataset_import_job(DatasetImportJobName,
      DatasetArn, DataSource, TimestampFormat, TimeZone,
      UseGeolocationForTimeZone, GeolocationFormat, Tags, Format, ImportMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_import_job_:_DatasetImportJobName">DatasetImportJobName</code></td>
<td><p>[required] The name for the dataset import job. We recommend
including the current timestamp in the name, for example, <code
style="white-space: pre;">⁠20190721DatasetImport⁠</code>. This can help
you avoid getting a <code>ResourceAlreadyExistsException</code>
exception.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_import_job_:_DatasetArn">DatasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Forecast
dataset that you want to import data to.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_import_job_:_DataSource">DataSource</code></td>
<td><p>[required] The location of the training data to import and an
Identity and Access Management (IAM) role that Amazon Forecast can
assume to access the data. The training data must be stored in an Amazon
S3 bucket.</p>
<p>If encryption is used, <code>DataSource</code> must include an Key
Management Service (KMS) key and the IAM role must allow Amazon Forecast
permission to access the key. The KMS key and IAM role must match those
specified in the <code>EncryptionConfig</code> parameter of the
<code>create_dataset</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_import_job_:_TimestampFormat">TimestampFormat</code></td>
<td><p>The format of timestamps in the dataset. The format that you
specify depends on the <code>DataFrequency</code> specified when the
dataset was created. The following formats are supported</p>
<ul>
<li><p>"yyyy-MM-dd"</p>
<p>For the following data frequencies: Y, M, W, and D</p></li>
<li><p>"yyyy-MM-dd HH:mm:ss"</p>
<p>For the following data frequencies: H, 30min, 15min, and 1min; and
optionally, for: Y, M, W, and D</p></li>
</ul>
<p>If the format isn't specified, Amazon Forecast expects the format to
be "yyyy-MM-dd HH:mm:ss".</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_import_job_:_TimeZone">TimeZone</code></td>
<td><p>A single time zone for every item in your dataset. This option is
ideal for datasets with all timestamps within a single time zone, or if
all timestamps are normalized to a single time zone.</p>
<p>Refer to the <a
href="https://joda-time.sourceforge.net/timezones.html">Joda-Time
API</a> for a complete list of valid time zone names.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_import_job_:_UseGeolocationForTimeZone">UseGeolocationForTimeZone</code></td>
<td><p>Automatically derive time zone information from the geolocation
attribute. This option is ideal for datasets that contain timestamps in
multiple time zones and those timestamps are expressed in local
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_import_job_:_GeolocationFormat">GeolocationFormat</code></td>
<td><p>The format of the geolocation attribute. The geolocation
attribute can be formatted in one of two ways:</p>
<ul>
<li><p><code>LAT_LONG</code> - the latitude and longitude in decimal
format (Example: 47.61_-122.33).</p></li>
<li><p><code>CC_POSTALCODE</code> (US Only) - the country code (US),
followed by the 5-digit ZIP code (Example: US_98121).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_import_job_:_Tags">Tags</code></td>
<td><p>The optional metadata that you apply to the dataset import job to
help you categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.</p>
<p>The following basic restrictions apply to tags:</p>
<ul>
<li><p>Maximum number of tags per resource - 50.</p></li>
<li><p>For each resource, each tag key must be unique, and each tag key
can have only one value.</p></li>
<li><p>Maximum key length - 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length - 256 Unicode characters in UTF-8.</p></li>
<li><p>If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _ :
/ @.</p></li>
<li><p>Tag keys and values are case sensitive.</p></li>
<li><p>Do not use <code style="white-space: pre;">⁠aws:⁠</code>, <code
style="white-space: pre;">⁠AWS:⁠</code>, or any upper or lowercase
combination of such as a prefix for keys as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys with this prefix.
Values can have this prefix. If a tag value has <code>aws</code> as its
prefix but the key does not, then Forecast considers it to be a user tag
and will count against the limit of 50 tags. Tags with only the key
prefix of <code>aws</code> do not count against your tags per resource
limit.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_dataset_import_job_:_Format">Format</code></td>
<td><p>The format of the imported data, CSV or PARQUET. The default
value is CSV.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_dataset_import_job_:_ImportMode">ImportMode</code></td>
<td><p>Specifies whether the dataset import job is a <code>FULL</code>
or <code>INCREMENTAL</code> import. A <code>FULL</code> dataset import
replaces all of the existing data with the newly imported data. An
<code>INCREMENTAL</code> import appends the imported data to the
existing data.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatasetImportJobArn = "string"
    )

### Request syntax

    svc$create_dataset_import_job(
      DatasetImportJobName = "string",
      DatasetArn = "string",
      DataSource = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      TimestampFormat = "string",
      TimeZone = "string",
      UseGeolocationForTimeZone = TRUE|FALSE,
      GeolocationFormat = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Format = "string",
      ImportMode = "FULL"|"INCREMENTAL"
    )
