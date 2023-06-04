<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_create_qualification_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateQualificationType operation creates a new Qualification type, which is represented by a QualificationType data structure

### Description

The `create_qualification_type` operation creates a new Qualification
type, which is represented by a `QualificationType` data structure.

### Usage

    mturk_create_qualification_type(Name, Keywords, Description,
      QualificationTypeStatus, RetryDelayInSeconds, Test, AnswerKey,
      TestDurationInSeconds, AutoGranted, AutoGrantedValue)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_create_qualification_type_:_Name">Name</code></td>
<td><p>[required] The name you give to the Qualification type. The type
name is used to represent the Qualification to Workers, and to find the
type using a Qualification type search. It must be unique across all of
your Qualification types.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_qualification_type_:_Keywords">Keywords</code></td>
<td><p>One or more words or phrases that describe the Qualification
type, separated by commas. The keywords of a type make the type easier
to find during a search.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_qualification_type_:_Description">Description</code></td>
<td><p>[required] A long description for the Qualification type. On the
Amazon Mechanical Turk website, the long description is displayed when a
Worker examines a Qualification type.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_qualification_type_:_QualificationTypeStatus">QualificationTypeStatus</code></td>
<td><p>[required] The initial status of the Qualification type.</p>
<p>Constraints: Valid values are: Active | Inactive</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_qualification_type_:_RetryDelayInSeconds">RetryDelayInSeconds</code></td>
<td><p>The number of seconds that a Worker must wait after requesting a
Qualification of the Qualification type before the worker can retry the
Qualification request.</p>
<p>Constraints: None. If not specified, retries are disabled and Workers
can request a Qualification of this type only once, even if the Worker
has not been granted the Qualification. It is not possible to disable
retries for a Qualification type after it has been created with retries
enabled. If you want to disable retries, you must delete existing
retry-enabled Qualification type and then create a new Qualification
type with retries disabled.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_create_qualification_type_:_Test">Test</code></td>
<td><p>The questions for the Qualification test a Worker must answer
correctly to obtain a Qualification of this type. If this parameter is
specified, <code>TestDurationInSeconds</code> must also be
specified.</p>
<p>Constraints: Must not be longer than 65535 bytes. Must be a
QuestionForm data structure. This parameter cannot be specified if
AutoGranted is true.</p>
<p>Constraints: None. If not specified, the Worker may request the
Qualification without answering any questions.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_qualification_type_:_AnswerKey">AnswerKey</code></td>
<td><p>The answers to the Qualification test specified in the Test
parameter, in the form of an AnswerKey data structure.</p>
<p>Constraints: Must not be longer than 65535 bytes.</p>
<p>Constraints: None. If not specified, you must process Qualification
requests manually.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_qualification_type_:_TestDurationInSeconds">TestDurationInSeconds</code></td>
<td><p>The number of seconds the Worker has to complete the
Qualification test, starting from the time the Worker requests the
Qualification.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_qualification_type_:_AutoGranted">AutoGranted</code></td>
<td><p>Specifies whether requests for the Qualification type are granted
immediately, without prompting the Worker with a Qualification test.</p>
<p>Constraints: If the Test parameter is specified, this parameter
cannot be true.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_qualification_type_:_AutoGrantedValue">AutoGrantedValue</code></td>
<td><p>The Qualification value to use for automatically granted
Qualifications. This parameter is used only if the AutoGranted parameter
is true.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QualificationType = list(
        QualificationTypeId = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Name = "string",
        Description = "string",
        Keywords = "string",
        QualificationTypeStatus = "Active"|"Inactive",
        Test = "string",
        TestDurationInSeconds = 123,
        AnswerKey = "string",
        RetryDelayInSeconds = 123,
        IsRequestable = TRUE|FALSE,
        AutoGranted = TRUE|FALSE,
        AutoGrantedValue = 123
      )
    )

### Request syntax

    svc$create_qualification_type(
      Name = "string",
      Keywords = "string",
      Description = "string",
      QualificationTypeStatus = "Active"|"Inactive",
      RetryDelayInSeconds = 123,
      Test = "string",
      AnswerKey = "string",
      TestDurationInSeconds = 123,
      AutoGranted = TRUE|FALSE,
      AutoGrantedValue = 123
    )
