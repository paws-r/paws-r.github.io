<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>qldbsession_send_command</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends a command to an Amazon QLDB ledger

### Description

Sends a command to an Amazon QLDB ledger.

Instead of interacting directly with this API, we recommend using the
QLDB driver or the QLDB shell to execute data transactions on a ledger.

-   If you are working with an AWS SDK, use the QLDB driver. The driver
    provides a high-level abstraction layer above this *QLDB Session*
    data plane and manages `send_command` API calls for you. For
    information and a list of supported programming languages, see
    [Getting started with the
    driver](https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html)
    in the *Amazon QLDB Developer Guide*.

-   If you are working with the AWS Command Line Interface (AWS CLI),
    use the QLDB shell. The shell is a command line interface that uses
    the QLDB driver to interact with a ledger. For information, see
    [Accessing Amazon QLDB using the QLDB
    shell](https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html).

### Usage

    qldbsession_send_command(SessionToken, StartSession, StartTransaction,
      EndSession, CommitTransaction, AbortTransaction, ExecuteStatement,
      FetchPage)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="qldbsession_send_command_:_SessionToken">SessionToken</code></td>
<td><p>Specifies the session token for the current command. A session
token is constant throughout the life of the session.</p>
<p>To obtain a session token, run the <code>StartSession</code> command.
This <code>SessionToken</code> is required for every subsequent command
that is issued during the current session.</p></td>
</tr>
<tr class="even">
<td><code
id="qldbsession_send_command_:_StartSession">StartSession</code></td>
<td><p>Command to start a new session. A session token is obtained as
part of the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldbsession_send_command_:_StartTransaction">StartTransaction</code></td>
<td><p>Command to start a new transaction.</p></td>
</tr>
<tr class="even">
<td><code
id="qldbsession_send_command_:_EndSession">EndSession</code></td>
<td><p>Command to end the current session.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldbsession_send_command_:_CommitTransaction">CommitTransaction</code></td>
<td><p>Command to commit the specified transaction.</p></td>
</tr>
<tr class="even">
<td><code
id="qldbsession_send_command_:_AbortTransaction">AbortTransaction</code></td>
<td><p>Command to abort the current transaction.</p></td>
</tr>
<tr class="odd">
<td><code
id="qldbsession_send_command_:_ExecuteStatement">ExecuteStatement</code></td>
<td><p>Command to execute a statement in the specified
transaction.</p></td>
</tr>
<tr class="even">
<td><code
id="qldbsession_send_command_:_FetchPage">FetchPage</code></td>
<td><p>Command to fetch a page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StartSession = list(
        SessionToken = "string",
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        )
      ),
      StartTransaction = list(
        TransactionId = "string",
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        )
      ),
      EndSession = list(
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        )
      ),
      CommitTransaction = list(
        TransactionId = "string",
        CommitDigest = raw,
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        ),
        ConsumedIOs = list(
          ReadIOs = 123,
          WriteIOs = 123
        )
      ),
      AbortTransaction = list(
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        )
      ),
      ExecuteStatement = list(
        FirstPage = list(
          Values = list(
            list(
              IonBinary = raw,
              IonText = "string"
            )
          ),
          NextPageToken = "string"
        ),
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        ),
        ConsumedIOs = list(
          ReadIOs = 123,
          WriteIOs = 123
        )
      ),
      FetchPage = list(
        Page = list(
          Values = list(
            list(
              IonBinary = raw,
              IonText = "string"
            )
          ),
          NextPageToken = "string"
        ),
        TimingInformation = list(
          ProcessingTimeMilliseconds = 123
        ),
        ConsumedIOs = list(
          ReadIOs = 123,
          WriteIOs = 123
        )
      )
    )

### Request syntax

    svc$send_command(
      SessionToken = "string",
      StartSession = list(
        LedgerName = "string"
      ),
      StartTransaction = list(),
      EndSession = list(),
      CommitTransaction = list(
        TransactionId = "string",
        CommitDigest = raw
      ),
      AbortTransaction = list(),
      ExecuteStatement = list(
        TransactionId = "string",
        Statement = "string",
        Parameters = list(
          list(
            IonBinary = raw,
            IonText = "string"
          )
        )
      ),
      FetchPage = list(
        TransactionId = "string",
        NextPageToken = "string"
      )
    )
