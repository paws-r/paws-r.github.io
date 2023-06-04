<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_workers_with_qualification_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type

### Description

The `list_workers_with_qualification_type` operation returns all of the
Workers that have been associated with a given Qualification type.

### Usage

    mturk_list_workers_with_qualification_type(QualificationTypeId, Status,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_list_workers_with_qualification_type_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the Qualification type of the Qualifications
to return.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_workers_with_qualification_type_:_Status">Status</code></td>
<td><p>The status of the Qualifications to return. Can be
<code>Granted | Revoked</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_workers_with_qualification_type_:_NextToken">NextToken</code></td>
<td><p>Pagination Token</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_workers_with_qualification_type_:_MaxResults">MaxResults</code></td>
<td><p>Limit the number of results returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NumResults = 123,
      Qualifications = list(
        list(
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
    )

### Request syntax

    svc$list_workers_with_qualification_type(
      QualificationTypeId = "string",
      Status = "Granted"|"Revoked",
      NextToken = "string",
      MaxResults = 123
    )
