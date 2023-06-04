<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_test_repository_triggers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Tests the functionality of repository triggers by sending information to the trigger target

### Description

Tests the functionality of repository triggers by sending information to
the trigger target. If real data is available in the repository, the
test sends data from the last commit. If no data is available, sample
data is generated.

### Usage

    codecommit_test_repository_triggers(repositoryName, triggers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_test_repository_triggers_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository in which to test the
triggers.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_test_repository_triggers_:_triggers">triggers</code></td>
<td><p>[required] The list of triggers to test.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      successfulExecutions = list(
        "string"
      ),
      failedExecutions = list(
        list(
          trigger = "string",
          failureMessage = "string"
        )
      )
    )

### Request syntax

    svc$test_repository_triggers(
      repositoryName = "string",
      triggers = list(
        list(
          name = "string",
          destinationArn = "string",
          customData = "string",
          branches = list(
            "string"
          ),
          events = list(
            "all"|"updateReference"|"createReference"|"deleteReference"
          )
        )
      )
    )
