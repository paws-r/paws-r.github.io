<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_create_vocabulary_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom vocabulary filter

### Description

Creates a new custom vocabulary filter.

You can use custom vocabulary filters to mask, delete, or flag specific
words from your transcript. Custom vocabulary filters are commonly used
to mask profanity in transcripts.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary filter request fails. Refer to [Character Sets for
Custom
Vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html)
to get the character set for your language.

For more information, see [Vocabulary
filtering](https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-filtering.html).

### Usage

    transcribeservice_create_vocabulary_filter(VocabularyFilterName,
      LanguageCode, Words, VocabularyFilterFileUri, Tags, DataAccessRoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_create_vocabulary_filter_:_VocabularyFilterName">VocabularyFilterName</code></td>
<td><p>[required] A unique name, chosen by you, for your new custom
vocabulary filter.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
custom vocabulary filter with the same name as an existing custom
vocabulary filter, you get a <code>ConflictException</code>
error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_vocabulary_filter_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code that represents the language of the
entries in your vocabulary filter. Each custom vocabulary filter must
contain terms in only one language.</p>
<p>A custom vocabulary filter can only be used to transcribe files in
the same language as the filter. For example, if you create a custom
vocabulary filter using US English (<code>en-US</code>), you can only
apply this filter to files that contain English audio.</p>
<p>For a list of supported languages and their associated language
codes, refer to the <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
languages</a> table.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_vocabulary_filter_:_Words">Words</code></td>
<td><p>Use this parameter if you want to create your custom vocabulary
filter by including all desired terms, as comma-separated values, within
your request. The other option for creating your vocabulary filter is to
save your entries in a text file and upload them to an Amazon S3 bucket,
then specify the location of your file using the
<code>VocabularyFilterFileUri</code> parameter.</p>
<p>Note that if you include <code>Words</code> in your request, you
cannot use <code>VocabularyFilterFileUri</code>; you must choose one or
the other.</p>
<p>Each language has a character set that contains all allowed
characters for that specific language. If you use unsupported
characters, your custom vocabulary filter request fails. Refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html">Character
Sets for Custom Vocabularies</a> to get the character set for your
language.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_vocabulary_filter_:_VocabularyFilterFileUri">VocabularyFilterFileUri</code></td>
<td><p>The Amazon S3 location of the text file that contains your custom
vocabulary filter terms. The URI must be located in the same Amazon Web
Services Region as the resource you're calling.</p>
<p>Here's an example URI path: <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt⁠</code></p>
<p>Note that if you include <code>VocabularyFilterFileUri</code> in your
request, you cannot use <code>Words</code>; you must choose one or the
other.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_vocabulary_filter_:_Tags">Tags</code></td>
<td><p>Adds one or more custom tags, each in the form of a key:value
pair, to a new custom vocabulary filter at the time you create this new
vocabulary filter.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_vocabulary_filter_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role that has
permissions to access the Amazon S3 bucket that contains your input
files (in this case, your custom vocabulary filter). If the role that
you specify doesn’t have the appropriate permissions to access the
specified Amazon S3 location, your request fails.</p>
<p>IAM role ARNs have the format
<code>arn:partition:iam::account:role/role-name-with-path</code>. For
example: <code
style="white-space: pre;">⁠arn:aws:iam::111122223333:role/Admin⁠</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
ARNs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyFilterName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_vocabulary_filter(
      VocabularyFilterName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      Words = list(
        "string"
      ),
      VocabularyFilterFileUri = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DataAccessRoleArn = "string"
    )
