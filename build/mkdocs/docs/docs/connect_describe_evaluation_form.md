<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_evaluation_form</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an evaluation form in the specified Amazon Connect instance

### Description

Describes an evaluation form in the specified Amazon Connect instance.
If the version property is not provided, the latest version of the
evaluation form is described.

### Usage

    connect_describe_evaluation_form(InstanceId, EvaluationFormId,
      EvaluationFormVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_evaluation_form_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_evaluation_form_:_EvaluationFormId">EvaluationFormId</code></td>
<td><p>[required] A unique identifier for the contact
evaluation.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_describe_evaluation_form_:_EvaluationFormVersion">EvaluationFormVersion</code></td>
<td><p>A version of the evaluation form.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationForm = list(
        EvaluationFormId = "string",
        EvaluationFormVersion = 123,
        Locked = TRUE|FALSE,
        EvaluationFormArn = "string",
        Title = "string",
        Description = "string",
        Status = "DRAFT"|"ACTIVE",
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
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        CreatedBy = "string",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedBy = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_evaluation_form(
      InstanceId = "string",
      EvaluationFormId = "string",
      EvaluationFormVersion = 123
    )
