<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_create_ruleset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new ruleset that can be used in a profile job to validate the data quality of a dataset

### Description

Creates a new ruleset that can be used in a profile job to validate the
data quality of a dataset.

### Usage

    gluedatabrew_create_ruleset(Name, Description, TargetArn, Rules, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_create_ruleset_:_Name">Name</code></td>
<td><p>[required] The name of the ruleset to be created. Valid
characters are alphanumeric (A-Z, a-z, 0-9), hyphen (-), period (.), and
space.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_create_ruleset_:_Description">Description</code></td>
<td><p>The description of the ruleset.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_create_ruleset_:_TargetArn">TargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of a resource (dataset)
that the ruleset is associated with.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_create_ruleset_:_Rules">Rules</code></td>
<td><p>[required] A list of rules that are defined with the ruleset. A
rule includes one or more checks to be validated on a DataBrew
dataset.</p></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_create_ruleset_:_Tags">Tags</code></td>
<td><p>Metadata tags to apply to the ruleset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$create_ruleset(
      Name = "string",
      Description = "string",
      TargetArn = "string",
      Rules = list(
        list(
          Name = "string",
          Disabled = TRUE|FALSE,
          CheckExpression = "string",
          SubstitutionMap = list(
            "string"
          ),
          Threshold = list(
            Value = 123.0,
            Type = "GREATER_THAN_OR_EQUAL"|"LESS_THAN_OR_EQUAL"|"GREATER_THAN"|"LESS_THAN",
            Unit = "COUNT"|"PERCENTAGE"
          ),
          ColumnSelectors = list(
            list(
              Regex = "string",
              Name = "string"
            )
          )
        )
      ),
      Tags = list(
        "string"
      )
    )
