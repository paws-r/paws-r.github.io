<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_qualification_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type

### Description

The `list_qualification_requests` operation retrieves requests for
Qualifications of a particular Qualification type. The owner of the
Qualification type calls this operation to poll for pending requests,
and accepts them using the AcceptQualification operation.

### Usage

    mturk_list_qualification_requests(QualificationTypeId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_list_qualification_requests_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>The ID of the QualificationType.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_qualification_requests_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_qualification_requests_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NumResults = 123,
      NextToken = "string",
      QualificationRequests = list(
        list(
          QualificationRequestId = "string",
          QualificationTypeId = "string",
          WorkerId = "string",
          Test = "string",
          Answer = "string",
          SubmitTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_qualification_requests(
      QualificationTypeId = "string",
      NextToken = "string",
      MaxResults = 123
    )
