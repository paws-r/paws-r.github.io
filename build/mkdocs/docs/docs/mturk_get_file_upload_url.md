<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_file_upload_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetFileUploadURL operation generates and returns a temporary URL

### Description

The `get_file_upload_url` operation generates and returns a temporary
URL. You use the temporary URL to retrieve a file uploaded by a Worker
as an answer to a FileUploadAnswer question for a HIT. The temporary URL
is generated the instant the GetFileUploadURL operation is called, and
is valid for 60 seconds. You can get a temporary file upload URL any
time until the HIT is disposed. After the HIT is disposed, any uploaded
files are deleted, and cannot be retrieved. Pending Deprecation on
December 12, 2017. The Answer Specification structure will no longer
support the `FileUploadAnswer` element to be used for the QuestionForm
data structure. Instead, we recommend that Requesters who want to create
HITs asking Workers to upload files to use Amazon S3.

### Usage

    mturk_get_file_upload_url(AssignmentId, QuestionIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_get_file_upload_url_:_AssignmentId">AssignmentId</code></td>
<td><p>[required] The ID of the assignment that contains the question
with a FileUploadAnswer.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_get_file_upload_url_:_QuestionIdentifier">QuestionIdentifier</code></td>
<td><p>[required] The identifier of the question with a
FileUploadAnswer, as specified in the QuestionForm of the HIT.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileUploadURL = "string"
    )

### Request syntax

    svc$get_file_upload_url(
      AssignmentId = "string",
      QuestionIdentifier = "string"
    )
