<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>mturk_create_hit_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The CreateHITType operation creates a new HIT type

### Description

The `create_hit_type` operation creates a new HIT type. This operation
allows you to define a standard set of HIT properties to use when
creating HITs. If you register a HIT type with values that match an
existing HIT type, the HIT type ID of the existing type will be
returned.

### Usage

    mturk_create_hit_type(AutoApprovalDelayInSeconds,
      AssignmentDurationInSeconds, Reward, Title, Keywords, Description,
      QualificationRequirements)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="mturk_create_hit_type_:_AutoApprovalDelayInSeconds">AutoApprovalDelayInSeconds</code></td>
<td><p>The number of seconds after an assignment for the HIT has been
submitted, after which the assignment is considered Approved
automatically unless the Requester explicitly rejects it.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_type_:_AssignmentDurationInSeconds">AssignmentDurationInSeconds</code></td>
<td><p>[required] The amount of time, in seconds, that a Worker has to
complete the HIT after accepting it. If a Worker does not complete the
assignment within the specified duration, the assignment is considered
abandoned. If the HIT is still active (that is, its lifetime has not
elapsed), the assignment becomes available for other users to find and
accept.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_type_:_Reward">Reward</code></td>
<td><p>[required] The amount of money the Requester will pay a Worker
for successfully completing the HIT.</p></td>
</tr>
<tr class="even">
<td><code id="mturk_create_hit_type_:_Title">Title</code></td>
<td><p>[required] The title of the HIT. A title should be short and
descriptive about the kind of task the HIT contains. On the Amazon
Mechanical Turk web site, the HIT title appears in search results, and
everywhere the HIT is mentioned.</p></td>
</tr>
<tr class="odd">
<td><code id="mturk_create_hit_type_:_Keywords">Keywords</code></td>
<td><p>One or more words or phrases that describe the HIT, separated by
commas. These words are used in searches to find HITs.</p></td>
</tr>
<tr class="even">
<td><code
id="mturk_create_hit_type_:_Description">Description</code></td>
<td><p>[required] A general description of the HIT. A description
includes detailed information about the kind of task the HIT contains.
On the Amazon Mechanical Turk web site, the HIT description appears in
the expanded view of search results, and in the HIT and assignment
screens. A good description gives the user enough information to
evaluate the HIT before accepting it.</p></td>
</tr>
<tr class="odd">
<td><code
id="mturk_create_hit_type_:_QualificationRequirements">QualificationRequirements</code></td>
<td><p>Conditions that a Worker's Qualifications must meet in order to
accept the HIT. A HIT can have between zero and ten Qualification
requirements. All requirements must be met in order for a Worker to
accept the HIT. Additionally, other actions can be restricted using the
<code>ActionsGuarded</code> field on each
<code>QualificationRequirement</code> structure.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HITTypeId = "string"
    )

### Request syntax

    svc$create_hit_type(
      AutoApprovalDelayInSeconds = 123,
      AssignmentDurationInSeconds = 123,
      Reward = "string",
      Title = "string",
      Keywords = "string",
      Description = "string",
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
      )
    )
