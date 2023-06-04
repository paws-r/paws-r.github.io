<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_start_session</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates a connection to a target (for example, a managed node) for a Session Manager session

### Description

Initiates a connection to a target (for example, a managed node) for a
Session Manager session. Returns a URL and token that can be used to
open a WebSocket connection for sending input and receiving outputs.

Amazon Web Services CLI usage: `start-session` is an interactive command
that requires the Session Manager plugin to be installed on the client
machine making the call. For information, see [Install the Session
Manager plugin for the Amazon Web Services
CLI](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html)
in the *Amazon Web Services Systems Manager User Guide*.

Amazon Web Services Tools for PowerShell usage: Start-SSMSession isn't
currently supported by Amazon Web Services Tools for PowerShell on
Windows local machines.

### Usage

    ssm_start_session(Target, DocumentName, Reason, Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_start_session_:_Target">Target</code></td>
<td><p>[required] The managed node to connect to for the
session.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_start_session_:_DocumentName">DocumentName</code></td>
<td><p>The name of the SSM document you want to use to define the type
of session, input parameters, or preferences for the session. For
example, <code>SSM-SessionManagerRunShell</code>. You can call the
<code>get_document</code> API to verify the document exists before
attempting to start a session. If no document name is provided, a shell
to the managed node is launched by default. For more information, see <a
href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-sessions-start.html">Start
a session</a> in the <em>Amazon Web Services Systems Manager User
Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_start_session_:_Reason">Reason</code></td>
<td><p>The reason for connecting to the instance. This value is included
in the details for the Amazon CloudWatch Events event created when you
start the session.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_start_session_:_Parameters">Parameters</code></td>
<td><p>The values you want to specify for the parameters defined in the
Session document.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SessionId = "string",
      TokenValue = "string",
      StreamUrl = "string"
    )

### Request syntax

    svc$start_session(
      Target = "string",
      DocumentName = "string",
      Reason = "string",
      Parameters = list(
        list(
          "string"
        )
      )
    )
