<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_hi_ts_for_qualification_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement

### Description

The `list_hi_ts_for_qualification_type` operation returns the HITs that
use the given Qualification type for a Qualification requirement. The
operation returns HITs of any status, except for HITs that have been
deleted with the `delete_hit` operation or that have been auto-deleted.

### Usage

    mturk_list_hi_ts_for_qualification_type(QualificationTypeId, NextToken,
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
id="mturk_list_hi_ts_for_qualification_type_:_QualificationTypeId">QualificationTypeId</code></td>
<td><p>[required] The ID of the Qualification type to use when querying
HITs.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_hi_ts_for_qualification_type_:_NextToken">NextToken</code></td>
<td><p>Pagination Token</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_hi_ts_for_qualification_type_:_MaxResults">MaxResults</code></td>
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

    svc$list_hi_ts_for_qualification_type(
      QualificationTypeId = "string",
      NextToken = "string",
      MaxResults = 123
    )
