<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector_stop_assessment_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the assessment run that is specified by the ARN of the assessment run

### Description

Stops the assessment run that is specified by the ARN of the assessment
run.

### Usage

    inspector_stop_assessment_run(assessmentRunArn, stopAction)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector_stop_assessment_run_:_assessmentRunArn">assessmentRunArn</code></td>
<td><p>[required] The ARN of the assessment run that you want to
stop.</p></td>
</tr>
<tr class="even">
<td><code
id="inspector_stop_assessment_run_:_stopAction">stopAction</code></td>
<td><p>An input option that can be set to either START_EVALUATION or
SKIP_EVALUATION. START_EVALUATION (the default value), stops the AWS
agent from collecting data and begins the results evaluation and the
findings generation process. SKIP_EVALUATION cancels the assessment run
immediately, after which no findings are generated.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_assessment_run(
      assessmentRunArn = "string",
      stopAction = "START_EVALUATION"|"SKIP_EVALUATION"
    )

### Examples

    ## Not run: 
    # Stops the assessment run that is specified by the ARN of the assessment
    # run.
    svc$stop_assessment_run(
      assessmentRunArn = "arn:aws:inspector:us-west-2:123456789012:target/0-nvg..."
    )

    ## End(Not run)
