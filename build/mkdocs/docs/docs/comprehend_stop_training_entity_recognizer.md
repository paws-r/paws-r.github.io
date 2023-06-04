<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_stop_training_entity_recognizer</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops an entity recognizer training job while in progress

### Description

Stops an entity recognizer training job while in progress.

If the training job state is `TRAINING`, the job is marked for
termination and put into the `STOP_REQUESTED` state. If the training job
completes before it can be stopped, it is put into the `TRAINED`;
otherwise the training job is stopped and putted into the `STOPPED`
state and the service sends back an HTTP 200 response with an empty HTTP
body.

### Usage

    comprehend_stop_training_entity_recognizer(EntityRecognizerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_stop_training_entity_recognizer_:_EntityRecognizerArn">EntityRecognizerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that identifies the
entity recognizer currently being trained.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_training_entity_recognizer(
      EntityRecognizerArn = "string"
    )
