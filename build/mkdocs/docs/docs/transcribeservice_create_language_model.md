<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_create_language_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom language model

### Description

Creates a new custom language model.

When creating a new custom language model, you must specify:

-   If you want a Wideband (audio sample rates over 16,000 Hz) or
    Narrowband (audio sample rates under 16,000 Hz) base model

-   The location of your training and tuning files (this must be an
    Amazon S3 URI)

-   The language of your model

-   A unique name for your model

### Usage

    transcribeservice_create_language_model(LanguageCode, BaseModelName,
      ModelName, InputDataConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_create_language_model_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code that represents the language of your
model. Each custom language model must contain terms in only one
language, and the language you select for your custom language model
must match the language of your training and tuning data.</p>
<p>For a list of supported languages and their associated language
codes, refer to the <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
languages</a> table. Note that US English (<code>en-US</code>) is the
only language supported with Amazon Transcribe Medical.</p>
<p>A custom language model can only be used to transcribe files in the
same language as the model. For example, if you create a custom language
model using US English (<code>en-US</code>), you can only apply this
model to files that contain English audio.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_language_model_:_BaseModelName">BaseModelName</code></td>
<td><p>[required] The Amazon Transcribe standard language model, or base
model, used to create your custom language model. Amazon Transcribe
offers two options for base models: Wideband and Narrowband.</p>
<p>If the audio you want to transcribe has a sample rate of 16,000 Hz or
greater, choose <code>WideBand</code>. To transcribe audio with a sample
rate less than 16,000 Hz, choose <code>NarrowBand</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_language_model_:_ModelName">ModelName</code></td>
<td><p>[required] A unique name, chosen by you, for your custom language
model.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
custom language model with the same name as an existing custom language
model, you get a <code>ConflictException</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_language_model_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Contains the Amazon S3 location of the training data
you want to use to create a new custom language model, and permissions
to access this location.</p>
<p>When using <code>InputDataConfig</code>, you must include these
sub-parameters: <code>S3Uri</code>, which is the Amazon S3 location of
your training data, and <code>DataAccessRoleArn</code>, which is the
Amazon Resource Name (ARN) of the role that has permission to access
your specified Amazon S3 location. You can optionally include
<code>TuningDataS3Uri</code>, which is the Amazon S3 location of your
tuning data. If you specify different Amazon S3 locations for training
and tuning data, the ARN you use must have permissions to access both
locations.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_language_model_:_Tags">Tags</code></td>
<td><p>Adds one or more custom tags, each in the form of a key:value
pair, to a new custom language model at the time you create this new
model.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LanguageCode = "en-US"|"hi-IN"|"es-US"|"en-GB"|"en-AU"|"de-DE"|"ja-JP",
      BaseModelName = "NarrowBand"|"WideBand",
      ModelName = "string",
      InputDataConfig = list(
        S3Uri = "string",
        TuningDataS3Uri = "string",
        DataAccessRoleArn = "string"
      ),
      ModelStatus = "IN_PROGRESS"|"FAILED"|"COMPLETED"
    )

### Request syntax

    svc$create_language_model(
      LanguageCode = "en-US"|"hi-IN"|"es-US"|"en-GB"|"en-AU"|"de-DE"|"ja-JP",
      BaseModelName = "NarrowBand"|"WideBand",
      ModelName = "string",
      InputDataConfig = list(
        S3Uri = "string",
        TuningDataS3Uri = "string",
        DataAccessRoleArn = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
