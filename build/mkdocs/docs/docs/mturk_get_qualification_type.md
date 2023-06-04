<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_qualification_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetQualificationTypeoperation retrieves information about a Qualification type using its ID

### Description

The `get_qualification_type`operation retrieves information about a
Qualification type using its ID.

### Usage

    mturk_get_qualification_type(QualificationTypeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_get_qualification_type_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the QualificationType.</p></td>
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

    svc$get_qualification_type(
      QualificationTypeId = "string"
    )
