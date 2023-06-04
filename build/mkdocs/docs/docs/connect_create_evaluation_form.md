<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_evaluation_form</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an evaluation form in the specified Amazon Connect instance

### Description

Creates an evaluation form in the specified Amazon Connect instance. The
form can be used to define questions related to agent performance, and
create sections to organize such questions. Question and section
identifiers cannot be duplicated within the same evaluation form.

### Usage

    connect_create_evaluation_form(InstanceId, Title, Description, Items,
      ScoringStrategy, ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_evaluation_form_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_evaluation_form_:_Title">Title</code></td>
<td><p>[required] A title of the evaluation form.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_evaluation_form_:_Description">Description</code></td>
<td><p>The description of the evaluation form.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_evaluation_form_:_Items">Items</code></td>
<td><p>[required] Items that are part of the evaluation form. The total
number of sections and questions must not exceed 100 each. Questions
must be contained in a section.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_evaluation_form_:_ScoringStrategy">ScoringStrategy</code></td>
<td><p>A scoring strategy of the evaluation form.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_evaluation_form_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationFormId = "string",
      EvaluationFormArn = "string"
    )

### Request syntax

    svc$create_evaluation_form(
      InstanceId = "string",
      Title = "string",
      Description = "string",
      Items = list(
        list(
          Section = list(
            Title = "string",
            RefId = "string",
            Instructions = "string",
            Items = list(),
            Weight = 123.0
          ),
          Question = list(
            Title = "string",
            Instructions = "string",
            RefId = "string",
            NotApplicableEnabled = TRUE|FALSE,
            QuestionType = "TEXT"|"SINGLESELECT"|"NUMERIC",
            QuestionTypeProperties = list(
              Numeric = list(
                MinValue = 123,
                MaxValue = 123,
                Options = list(
                  list(
                    MinValue = 123,
                    MaxValue = 123,
                    Score = 123,
                    AutomaticFail = TRUE|FALSE
                  )
                ),
                Automation = list(
                  PropertyValue = list(
                    Label = "OVERALL_CUSTOMER_SENTIMENT_SCORE"|"OVERALL_AGENT_SENTIMENT_SCORE"|"NON_TALK_TIME"|"NON_TALK_TIME_PERCENTAGE"|"NUMBER_OF_INTERRUPTIONS"|"CONTACT_DURATION"|"AGENT_INTERACTION_DURATION"|"CUSTOMER_HOLD_TIME"
                  )
                )
              ),
              SingleSelect = list(
                Options = list(
                  list(
                    RefId = "string",
                    Text = "string",
                    Score = 123,
                    AutomaticFail = TRUE|FALSE
                  )
                ),
                DisplayAs = "DROPDOWN"|"RADIO",
                Automation = list(
                  Options = list(
                    list(
                      RuleCategory = list(
                        Category = "string",
                        Condition = "PRESENT"|"NOT_PRESENT",
                        OptionRefId = "string"
                      )
                    )
                  ),
                  DefaultOptionRefId = "string"
                )
              )
            ),
            Weight = 123.0
          )
        )
      ),
      ScoringStrategy = list(
        Mode = "QUESTION_ONLY"|"SECTION_ONLY",
        Status = "ENABLED"|"DISABLED"
      ),
      ClientToken = "string"
    )
