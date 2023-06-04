<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_qualification_types</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term

### Description

The `list_qualification_types` operation returns a list of Qualification
types, filtered by an optional search term.

### Usage

    mturk_list_qualification_types(Query, MustBeRequestable,
      MustBeOwnedByCaller, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_list_qualification_types_:_Query">Query</code></td>
<td><p>A text query against all of the searchable attributes of
Qualification types.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_qualification_types_:_MustBeRequestable">MustBeRequestable</code></td>
<td><p>[required] Specifies that only Qualification types that a user
can request through the Amazon Mechanical Turk web site, such as by
taking a Qualification test, are returned as results of the search. Some
Qualification types, such as those assigned automatically by the system,
cannot be requested directly by users. If false, all Qualification
types, including those managed by the system, are considered. Valid
values are True | False.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_qualification_types_:_MustBeOwnedByCaller">MustBeOwnedByCaller</code></td>
<td><p>Specifies that only Qualification types that the Requester
created are returned. If false, the operation returns all Qualification
types.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_qualification_types_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_qualification_types_:_MaxResults">MaxResults</code></td>
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
      QualificationTypes = list(
        list(
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
    )

### Request syntax

    svc$list_qualification_types(
      Query = "string",
      MustBeRequestable = TRUE|FALSE,
      MustBeOwnedByCaller = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
