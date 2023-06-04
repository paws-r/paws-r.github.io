<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_contact_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a contact evaluation in the specified Amazon Connect instance

### Description

Describes a contact evaluation in the specified Amazon Connect instance.

### Usage

    connect_describe_contact_evaluation(InstanceId, EvaluationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_contact_evaluation_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_contact_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] A unique identifier for the contact
evaluation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Evaluation = list(
        EvaluationId = "string",
        EvaluationArn = "string",
        Metadata = list(
          ContactId = "string",
          EvaluatorArn = "string",
          ContactAgentId = "string",
          Score = list(
            Percentage = 123.0,
            NotApplicable = TRUE|FALSE,
            AutomaticFail = TRUE|FALSE
          )
        ),
        Answers = list(
          list(
            Value = list(
              StringValue = "string",
              NumericValue = 123.0,
              NotApplicable = TRUE|FALSE
            ),
            SystemSuggestedValue = list(
              StringValue = "string",
              NumericValue = 123.0,
              NotApplicable = TRUE|FALSE
            )
          )
        ),
        Notes = list(
          list(
            Value = "string"
          )
        ),
        Status = "DRAFT"|"SUBMITTED",
        Scores = list(
          list(
            Percentage = 123.0,
            NotApplicable = TRUE|FALSE,
            AutomaticFail = TRUE|FALSE
          )
        ),
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        Tags = list(
          "string"
        )
      ),
      EvaluationForm = list(
        EvaluationFormVersion = 123,
        EvaluationFormId = "string",
        EvaluationFormArn = "string",
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
        )
      )
    )

### Request syntax

    svc$describe_contact_evaluation(
      InstanceId = "string",
      EvaluationId = "string"
    )
