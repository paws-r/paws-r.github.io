<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_qualification_score</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetQualificationScore operation returns the value of a Worker's Qualification for a given Qualification type

### Description

The `get_qualification_score` operation returns the value of a Worker's
Qualification for a given Qualification type.

To get a Worker's Qualification, you must know the Worker's ID. The
Worker's ID is included in the assignment data returned by the
`list_assignments_for_hit` operation.

Only the owner of a Qualification type can query the value of a Worker's
Qualification of that type.

### Usage

    mturk_get_qualification_score(QualificationTypeId, WorkerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_get_qualification_score_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the QualificationType.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_get_qualification_score_:_WorkerId">WorkerId</code></td>
<td><p>[required] The ID of the Worker whose Qualification is being
updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Qualification = list(
        QualificationTypeId = "string",
        WorkerId = "string",
        GrantTime = as.POSIXct(
          "2015-01-01"
        ),
        IntegerValue = 123,
        LocaleValue = list(
          Country = "string",
          Subdivision = "string"
        ),
        Status = "Granted"|"Revoked"
      )
    )

### Request syntax

    svc$get_qualification_score(
      QualificationTypeId = "string",
      WorkerId = "string"
    )
