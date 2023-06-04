<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_faq</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a set of frequently ask questions (FAQs) using a specified FAQ file stored in an Amazon S3 bucket

### Description

Creates a set of frequently ask questions (FAQs) using a specified FAQ
file stored in an Amazon S3 bucket.

Adding FAQs to an index is an asynchronous operation.

For an example of adding an FAQ to an index using Python and Java SDKs,
see [Using your FAQ
file](https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file).

### Usage

    kendra_create_faq(IndexId, Name, Description, S3Path, RoleArn, Tags,
      FileFormat, ClientToken, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_create_faq_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for the FAQ.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_faq_:_Name">Name</code></td>
<td><p>[required] A name for the FAQ.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_faq_:_Description">Description</code></td>
<td><p>A description for the FAQ.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_faq_:_S3Path">S3Path</code></td>
<td><p>[required] The path to the FAQ file in S3.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_faq_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role with
permission to access the S3 bucket that contains the FAQs. For more
information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_faq_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify the FAQ. You can use the
tags to identify and organize your resources and to control access to
resources.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_faq_:_FileFormat">FileFormat</code></td>
<td><p>The format of the FAQ input file. You can choose between a basic
CSV format, a CSV format that includes customs attributes in a header,
and a JSON format that includes custom attributes.</p>
<p>The format must match the format of the file stored in the S3 bucket
identified in the <code>S3Path</code> parameter.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html">Adding
questions and answers</a>.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_create_faq_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create a FAQ.
Multiple calls to the <code>CreateFaqRequest</code> API with the same
client token will create only one FAQ.</p></td>
</tr>
<tr class="odd">
<td><code id="kendra_create_faq_:_LanguageCode">LanguageCode</code></td>
<td><p>The code for a language. This allows you to support a language
for the FAQ document. English is supported by default. For more
information on supported languages, including their codes, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html">Adding
documents in languages other than English</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Id = "string"
    )

### Request syntax

    svc$create_faq(
      IndexId = "string",
      Name = "string",
      Description = "string",
      S3Path = list(
        Bucket = "string",
        Key = "string"
      ),
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      FileFormat = "CSV"|"CSV_WITH_HEADER"|"JSON",
      ClientToken = "string",
      LanguageCode = "string"
    )
