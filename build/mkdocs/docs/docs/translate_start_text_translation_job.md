<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_start_text_translation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an asynchronous batch translation job

### Description

Starts an asynchronous batch translation job. Use batch translation jobs
to translate large volumes of text across multiple documents at once.
For batch translation, you can input documents with different source
languages (specify `auto` as the source language). You can specify one
or more target languages. Batch translation translates each input
document into each of the target languages. For more information, see
[Asynchronous batch
processing](https://docs.aws.amazon.com/translate/latest/dg/async.html).

Batch translation jobs can be described with the
`describe_text_translation_job` operation, listed with the
`list_text_translation_jobs` operation, and stopped with the
`stop_text_translation_job` operation.

### Usage

    translate_start_text_translation_job(JobName, InputDataConfig,
      OutputDataConfig, DataAccessRoleArn, SourceLanguageCode,
      TargetLanguageCodes, TerminologyNames, ParallelDataNames, ClientToken,
      Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_start_text_translation_job_:_JobName">JobName</code></td>
<td><p>The name of the batch translation job to be performed.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_start_text_translation_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Specifies the format and location of the input
documents for the translation job.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_start_text_translation_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Specifies the S3 folder to which your job output will
be saved.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_start_text_translation_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an AWS Identity
Access and Management (IAM) role that grants Amazon Translate read
access to your input data. For more information, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/">Identity and
access management</a> .</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_start_text_translation_job_:_SourceLanguageCode">SourceLanguageCode</code></td>
<td><p>[required] The language code of the input language. Specify the
language if all input documents share the same language. If you don't
know the language of the source files, or your input documents contains
different source languages, select <code>auto</code>. Amazon Translate
auto detects the source language for each input document. For a list of
supported language codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_start_text_translation_job_:_TargetLanguageCodes">TargetLanguageCodes</code></td>
<td><p>[required] The target languages of the translation job. Enter up
to 10 language codes. Each input file is translated into each target
language.</p>
<p>Each language code is 2 or 5 characters long. For a list of language
codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_start_text_translation_job_:_TerminologyNames">TerminologyNames</code></td>
<td><p>The name of a custom terminology resource to add to the
translation job. This resource lists examples source terms and the
desired translation for each term.</p>
<p>This parameter accepts only one custom terminology resource.</p>
<p>If you specify multiple target languages for the job, translate uses
the designated terminology for each requested target language that has
an entry for the source term in the terminology file.</p>
<p>For a list of available custom terminology resources, use the
<code>list_terminologies</code> operation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html">Custom
terminology</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_start_text_translation_job_:_ParallelDataNames">ParallelDataNames</code></td>
<td><p>The name of a parallel data resource to add to the translation
job. This resource consists of examples that show how you want segments
of text to be translated. If you specify multiple target languages for
the job, the parallel data file must include translations for all the
target languages.</p>
<p>When you add parallel data to a translation job, you create an
<em>Active Custom Translation</em> job.</p>
<p>This parameter accepts only one parallel data resource.</p>
<p>Active Custom Translation jobs are priced at a higher rate than other
jobs that don't use parallel data. For more information, see <a
href="https://aws.amazon.com/translate/pricing/">Amazon Translate
pricing</a>.</p>
<p>For a list of available parallel data resources, use the
<code>list_parallel_data</code> operation.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html">Customizing
your translations with parallel data</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_start_text_translation_job_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. This token is
generated for you when using the Amazon Translate SDK.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_start_text_translation_job_:_Settings">Settings</code></td>
<td><p>Settings to configure your translation output, including the
option to set the formality level of the output text and the option to
mask profane words and phrases.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERROR"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$start_text_translation_job(
      JobName = "string",
      InputDataConfig = list(
        S3Uri = "string",
        ContentType = "string"
      ),
      OutputDataConfig = list(
        S3Uri = "string",
        EncryptionKey = list(
          Type = "KMS",
          Id = "string"
        )
      ),
      DataAccessRoleArn = "string",
      SourceLanguageCode = "string",
      TargetLanguageCodes = list(
        "string"
      ),
      TerminologyNames = list(
        "string"
      ),
      ParallelDataNames = list(
        "string"
      ),
      ClientToken = "string",
      Settings = list(
        Formality = "FORMAL"|"INFORMAL",
        Profanity = "MASK"
      )
    )
