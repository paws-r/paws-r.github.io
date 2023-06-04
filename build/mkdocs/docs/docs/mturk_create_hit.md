<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_create_hit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateHIT operation creates a new Human Intelligence Task (HIT)

### Description

The `create_hit` operation creates a new Human Intelligence Task (HIT).
The new HIT is made available for Workers to find and accept on the
Amazon Mechanical Turk website.

This operation allows you to specify a new HIT by passing in values for
the properties of the HIT, such as its title, reward amount and number
of assignments. When you pass these values to `create_hit`, a new HIT is
created for you, with a new `HITTypeID`. The HITTypeID can be used to
create additional HITs in the future without needing to specify common
parameters such as the title, description and reward amount each time.

An alternative way to create HITs is to first generate a HITTypeID using
the `create_hit_type` operation and then call the
`create_hit_with_hit_type` operation. This is the recommended best
practice for Requesters who are creating large numbers of HITs.

CreateHIT also supports several ways to provide question data: by
providing a value for the `Question` parameter that fully specifies the
contents of the HIT, or by providing a `HitLayoutId` and associated
`HitLayoutParameters`.

If a HIT is created with 10 or more maximum assignments, there is an
additional fee. For more information, see [Amazon Mechanical Turk
Pricing](https://requester.mturk.com/pricing).

### Usage

    mturk_create_hit(MaxAssignments, AutoApprovalDelayInSeconds,
      LifetimeInSeconds, AssignmentDurationInSeconds, Reward, Title, Keywords,
      Description, Question, RequesterAnnotation, QualificationRequirements,
      UniqueRequestToken, AssignmentReviewPolicy, HITReviewPolicy,
      HITLayoutId, HITLayoutParameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_create_hit_:_MaxAssignments">MaxAssignments</code></td>
<td><p>The number of times the HIT can be accepted and completed before
the HIT becomes unavailable.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_AutoApprovalDelayInSeconds">AutoApprovalDelayInSeconds</code></td>
<td><p>The number of seconds after an assignment for the HIT has been
submitted, after which the assignment is considered Approved
automatically unless the Requester explicitly rejects it.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_hit_:_LifetimeInSeconds">LifetimeInSeconds</code></td>
<td><p>[required] An amount of time, in seconds, after which the HIT is
no longer available for users to accept. After the lifetime of the HIT
elapses, the HIT no longer appears in HIT searches, even if not all of
the assignments for the HIT have been accepted.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_AssignmentDurationInSeconds">AssignmentDurationInSeconds</code></td>
<td><p>[required] The amount of time, in seconds, that a Worker has to
complete the HIT after accepting it. If a Worker does not complete the
assignment within the specified duration, the assignment is considered
abandoned. If the HIT is still active (that is, its lifetime has not
elapsed), the assignment becomes available for other users to find and
accept.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_:_Reward">Reward</code></td>
<td><p>[required] The amount of money the Requester will pay a Worker
for successfully completing the HIT.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_create_hit_:_Title">Title</code></td>
<td><p>[required] The title of the HIT. A title should be short and
descriptive about the kind of task the HIT contains. On the Amazon
Mechanical Turk web site, the HIT title appears in search results, and
everywhere the HIT is mentioned.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_:_Keywords">Keywords</code></td>
<td><p>One or more words or phrases that describe the HIT, separated by
commas. These words are used in searches to find HITs.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_create_hit_:_Description">Description</code></td>
<td><p>[required] A general description of the HIT. A description
includes detailed information about the kind of task the HIT contains.
On the Amazon Mechanical Turk web site, the HIT description appears in
the expanded view of search results, and in the HIT and assignment
screens. A good description gives the user enough information to
evaluate the HIT before accepting it.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_:_Question">Question</code></td>
<td><p>The data the person completing the HIT uses to produce the
results.</p>
<p>Constraints: Must be a QuestionForm data structure, an
ExternalQuestion data structure, or an HTMLQuestion data structure. The
XML question data must not be larger than 64 kilobytes (65,535 bytes) in
size, including whitespace.</p>
<p>Either a Question parameter or a HITLayoutId parameter must be
provided.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_RequesterAnnotation">RequesterAnnotation</code></td>
<td><p>An arbitrary data field. The RequesterAnnotation parameter lets
your application attach arbitrary data to the HIT for tracking purposes.
For example, this parameter could be an identifier internal to the
Requester's application that corresponds with the HIT.</p>
<p>The RequesterAnnotation parameter for a HIT is only visible to the
Requester who created the HIT. It is not shown to the Worker, or any
other Requester.</p>
<p>The RequesterAnnotation parameter may be different for each HIT you
submit. It does not affect how your HITs are grouped.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_hit_:_QualificationRequirements">QualificationRequirements</code></td>
<td><p>Conditions that a Worker's Qualifications must meet in order to
accept the HIT. A HIT can have between zero and ten Qualification
requirements. All requirements must be met in order for a Worker to
accept the HIT. Additionally, other actions can be restricted using the
<code>ActionsGuarded</code> field on each
<code>QualificationRequirement</code> structure.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_UniqueRequestToken">UniqueRequestToken</code></td>
<td><p>A unique identifier for this request which allows you to retry
the call on error without creating duplicate HITs. This is useful in
cases such as network timeouts where it is unclear whether or not the
call succeeded on the server. If the HIT already exists in the system
from a previous call using the same UniqueRequestToken, subsequent calls
will return a AWS.MechanicalTurk.HitAlreadyExists error with a message
containing the HITId.</p>
<p>Note: It is your responsibility to ensure uniqueness of the token.
The unique token expires after 24 hours. Subsequent calls using the same
UniqueRequestToken made after the 24 hour limit could create duplicate
HITs.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_hit_:_AssignmentReviewPolicy">AssignmentReviewPolicy</code></td>
<td><p>The Assignment-level Review Policy applies to the assignments
under the HIT. You can specify for Mechanical Turk to take various
actions based on the policy.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_HITReviewPolicy">HITReviewPolicy</code></td>
<td><p>The HIT-level Review Policy applies to the HIT. You can specify
for Mechanical Turk to take various actions based on the
policy.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_:_HITLayoutId">HITLayoutId</code></td>
<td><p>The HITLayoutId allows you to use a pre-existing HIT design with
placeholder values and create an additional HIT by providing those
values as HITLayoutParameters.</p>
<p>Constraints: Either a Question parameter or a HITLayoutId parameter
must be provided.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_:_HITLayoutParameters">HITLayoutParameters</code></td>
<td><p>If the HITLayoutId is provided, any placeholder values must be
filled in with values using the HITLayoutParameter structure. For more
information, see HITLayout.</p></td>
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

    svc$create_hit(
      MaxAssignments = 123,
      AutoApprovalDelayInSeconds = 123,
      LifetimeInSeconds = 123,
      AssignmentDurationInSeconds = 123,
      Reward = "string",
      Title = "string",
      Keywords = "string",
      Description = "string",
      Question = "string",
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
      UniqueRequestToken = "string",
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
      HITLayoutId = "string",
      HITLayoutParameters = list(
        list(
          Name = "string",
          Value = "string"
        )
      )
    )
