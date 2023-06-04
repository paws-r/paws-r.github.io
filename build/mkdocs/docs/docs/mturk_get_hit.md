<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetHIT operation retrieves the details of the specified HIT

### Description

The `get_hit` operation retrieves the details of the specified HIT.

### Usage

    mturk_get_hit(HITId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="mturk_get_hit_:_HITId">HITId</code></td>
<td><p>[required] The ID of the HIT to be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HIT = list(
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

### Request syntax

    svc$get_hit(
      HITId = "string"
    )
