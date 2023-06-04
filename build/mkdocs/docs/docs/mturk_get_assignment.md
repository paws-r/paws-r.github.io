<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_get_assignment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The GetAssignment operation retrieves the details of the specified Assignment

### Description

The `get_assignment` operation retrieves the details of the specified
Assignment.

### Usage

    mturk_get_assignment(AssignmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_get_assignment_:_AssignmentId">AssignmentId</code></td>
<td><p>[required] The ID of the Assignment to be retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Assignment = list(
        AssignmentId = "string",
        WorkerId = "string",
        HITId = "string",
        AssignmentStatus = "Submitted"|"Approved"|"Rejected",
        AutoApprovalTime = as.POSIXct(
          "2015-01-01"
        ),
        AcceptTime = as.POSIXct(
          "2015-01-01"
        ),
        SubmitTime = as.POSIXct(
          "2015-01-01"
        ),
        ApprovalTime = as.POSIXct(
          "2015-01-01"
        ),
        RejectionTime = as.POSIXct(
          "2015-01-01"
        ),
        Deadline = as.POSIXct(
          "2015-01-01"
        ),
        Answer = "string",
        RequesterFeedback = "string"
      ),
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

    svc$get_assignment(
      AssignmentId = "string"
    )
