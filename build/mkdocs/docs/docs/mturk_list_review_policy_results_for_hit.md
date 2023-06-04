<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_list_review_policy_results_for_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT

### Description

The `list_review_policy_results_for_hit` operation retrieves the
computed results and the actions taken in the course of executing your
Review Policies for a given HIT. For information about how to specify
Review Policies when you call CreateHIT, see Review Policies. The
ListReviewPolicyResultsForHIT operation can return results for both
Assignment-level and HIT-level review results.

### Usage

    mturk_list_review_policy_results_for_hit(HITId, PolicyLevels,
      RetrieveActions, RetrieveResults, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_list_review_policy_results_for_hit_:_HITId">HITId</code></td>
<td><p>[required] The unique identifier of the HIT to retrieve review
results for.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_review_policy_results_for_hit_:_PolicyLevels">PolicyLevels</code></td>
<td><p>The Policy Level(s) to retrieve review results for - HIT or
Assignment. If omitted, the default behavior is to retrieve all data for
both policy levels. For a list of all the described policies, see Review
Policies.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_review_policy_results_for_hit_:_RetrieveActions">RetrieveActions</code></td>
<td><p>Specify if the operation should retrieve a list of the actions
taken executing the Review Policies and their outcomes.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_review_policy_results_for_hit_:_RetrieveResults">RetrieveResults</code></td>
<td><p>Specify if the operation should retrieve a list of the results
computed by the Review Policies.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_list_review_policy_results_for_hit_:_NextToken">NextToken</code></td>
<td><p>Pagination token</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_list_review_policy_results_for_hit_:_MaxResults">MaxResults</code></td>
<td><p>Limit the number of results returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HITId = "string",
      AssignmentReviewPolicy = list(
        PolicyName = "string",
        Parameters = list(
          list(
            Key = "string",
            Values = list(
              "string"
            ),
            MapEntries = list(
              list(
                Key = "string",
                Values = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      HITReviewPolicy = list(
        PolicyName = "string",
        Parameters = list(
          list(
            Key = "string",
            Values = list(
              "string"
            ),
            MapEntries = list(
              list(
                Key = "string",
                Values = list(
                  "string"
                )
              )
            )
          )
        )
      ),
      AssignmentReviewReport = list(
        ReviewResults = list(
          list(
            ActionId = "string",
            SubjectId = "string",
            SubjectType = "string",
            QuestionId = "string",
            Key = "string",
            Value = "string"
          )
        ),
        ReviewActions = list(
          list(
            ActionId = "string",
            ActionName = "string",
            TargetId = "string",
            TargetType = "string",
            Status = "Intended"|"Succeeded"|"Failed"|"Cancelled",
            CompleteTime = as.POSIXct(
              "2015-01-01"
            ),
            Result = "string",
            ErrorCode = "string"
          )
        )
      ),
      HITReviewReport = list(
        ReviewResults = list(
          list(
            ActionId = "string",
            SubjectId = "string",
            SubjectType = "string",
            QuestionId = "string",
            Key = "string",
            Value = "string"
          )
        ),
        ReviewActions = list(
          list(
            ActionId = "string",
            ActionName = "string",
            TargetId = "string",
            TargetType = "string",
            Status = "Intended"|"Succeeded"|"Failed"|"Cancelled",
            CompleteTime = as.POSIXct(
              "2015-01-01"
            ),
            Result = "string",
            ErrorCode = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_review_policy_results_for_hit(
      HITId = "string",
      PolicyLevels = list(
        "Assignment"|"HIT"
      ),
      RetrieveActions = TRUE|FALSE,
      RetrieveResults = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
