<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_solution_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Trains or retrains an active solution in a Custom dataset group

### Description

Trains or retrains an active solution in a Custom dataset group. A
solution is created using the `create_solution` operation and must be in
the ACTIVE state before calling `create_solution_version`. A new version
of the solution is created every time you call this operation.

**Status**

A solution version can be in one of the following states:

-   CREATE PENDING

-   CREATE IN\_PROGRESS

-   ACTIVE

-   CREATE FAILED

-   CREATE STOPPING

-   CREATE STOPPED

To get the status of the version, call `describe_solution_version`. Wait
until the status shows as ACTIVE before calling `create_campaign`.

If the status shows as CREATE FAILED, the response includes a
`failureReason` key, which describes why the job failed.

**Related APIs**

-   `list_solution_versions`

-   `describe_solution_version`

-   `list_solutions`

-   `create_solution`

-   `describe_solution`

-   `delete_solution`

### Usage

    personalize_create_solution_version(name, solutionArn, trainingMode,
      tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_create_solution_version_:_name">name</code></td>
<td><p>The name of the solution version.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_solution_version_:_solutionArn">solutionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the solution
containing the training configuration information.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_solution_version_:_trainingMode">trainingMode</code></td>
<td><p>The scope of training to be performed when creating the solution
version. The <code>FULL</code> option trains the solution version based
on the entirety of the input solution's training data, while the
<code>UPDATE</code> option processes only the data that has changed in
comparison to the input solution. Choose <code>UPDATE</code> when you
want to incrementally update your solution version instead of creating
an entirely new one.</p>
<p>The <code>UPDATE</code> option can only be used when you already have
an active solution version created from the input solution using the
<code>FULL</code> option and the input solution was trained with the <a
href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-new-item-USER_PERSONALIZATION.html">User-Personalization</a>
recipe or the <a
href="https://docs.aws.amazon.com/personalize/latest/dg/native-recipe-hrnn-coldstart.html">HRNN-Coldstart</a>
recipe.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_solution_version_:_tags">tags</code></td>
<td><p>A list of tags to apply to the solution version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      solutionVersionArn = "string"
    )

### Request syntax

    svc$create_solution_version(
      name = "string",
      solutionArn = "string",
      trainingMode = "FULL"|"UPDATE",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
