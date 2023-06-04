<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_reviewable_hi_ts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation

### Description

The `list_reviewable_hi_ts` operation retrieves the HITs with Status
equal to Reviewable or Status equal to Reviewing that belong to the
Requester calling the operation.

### Usage

    mturk_list_reviewable_hi_ts(HITTypeId, Status, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_list_reviewable_hi_ts_:_HITTypeId">HITTypeId</code></td>
<td><p>The ID of the HIT type of the HITs to consider for the query. If
not specified, all HITs for the Reviewer are considered</p></td>
</tr>
<tr class="even">
<td><code id="mturk_list_reviewable_hi_ts_:_Status">Status</code></td>
<td><p>Can be either <code>Reviewable</code> or <code>Reviewing</code>.
Reviewable is the default value.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_reviewable_hi_ts_:_NextToken">NextToken</code></td>
<td><p>Pagination Token</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_reviewable_hi_ts_:_MaxResults">MaxResults</code></td>
<td><p>Limit the number of results returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      NumResults = 123,
      HITs = list(
        list(
          HITId = "string",
          HITTypeId = "string",
          HITGroupId = "string",
          HITLayoutId = "string",
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          Title = "string",
          Description = "string",
          Question = "string",
          Keywords = "string",
          HITStatus = "Assignable"|"Unassignable"|"Reviewable"|"Reviewing"|"Disposed",
          MaxAssignments = 123,
          Reward = "string",
          AutoApprovalDelayInSeconds = 123,
          Expiration = as.POSIXct(
            "2015-01-01"
          ),
          AssignmentDurationInSeconds = 123,
          RequesterAnnotation = "string",
          QualificationRequirements = list(
            list(
              QualificationTypeId = "string",
              Comparator = "LessThan"|"LessThanOrEqualTo"|"GreaterThan"|"GreaterThanOrEqualTo"|"EqualTo"|"NotEqualTo"|"Exists"|"DoesNotExist"|"In"|"NotIn",
              IntegerValues = list(
                123
              ),
              LocaleValues = list(
                list(
                  Country = "string",
                  Subdivision = "string"
                )
              ),
              RequiredToPreview = TRUE|FALSE,
              ActionsGuarded = "Accept"|"PreviewAndAccept"|"DiscoverPreviewAndAccept"
            )
          ),
          HITReviewStatus = "NotReviewed"|"MarkedForReview"|"ReviewedAppropriate"|"ReviewedInappropriate",
          NumberOfAssignmentsPending = 123,
          NumberOfAssignmentsAvailable = 123,
          NumberOfAssignmentsCompleted = 123
        )
      )
    )

### Request syntax

    svc$list_reviewable_hi_ts(
      HITTypeId = "string",
      Status = "Reviewable"|"Reviewing",
      NextToken = "string",
      MaxResults = 123
    )
