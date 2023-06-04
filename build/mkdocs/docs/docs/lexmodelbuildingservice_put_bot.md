<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_put_bot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon Lex conversational bot or replaces an existing bot

### Description

Creates an Amazon Lex conversational bot or replaces an existing bot.
When you create or update a bot you are only required to specify a name,
a locale, and whether the bot is directed toward children under age 13.
You can use this to add intents later, or to remove intents from an
existing bot. When you create a bot with the minimum information, the
bot is created or updated but Amazon Lex returns the “ response
`FAILED`. You can build the bot after you add one or more intents. For
more information about Amazon Lex bots, see how-it-works.

If you specify the name of an existing bot, the fields in the request
replace the existing values in the `⁠$LATEST⁠` version of the bot. Amazon
Lex removes any fields that you don't provide values for in the request,
except for the `idleTTLInSeconds` and `privacySettings` fields, which
are set to their default values. If you don't specify values for
required fields, Amazon Lex throws an exception.

This operation requires permissions for the `lex:PutBot` action. For
more information, see security-iam.

### Usage

    lexmodelbuildingservice_put_bot(name, description, intents,
      enableModelImprovements, nluIntentConfidenceThreshold,
      clarificationPrompt, abortStatement, idleSessionTTLInSeconds, voiceId,
      checksum, processBehavior, locale, childDirected, detectSentiment,
      createVersion, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lexmodelbuildingservice_put_bot_:_name">name</code></td>
<td><p>[required] The name of the bot. The name is <em>not</em> case
sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_description">description</code></td>
<td><p>A description of the bot.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_intents">intents</code></td>
<td><p>An array of <code>Intent</code> objects. Each intent represents a
command that a user can express. For example, a pizza ordering bot might
support an OrderPizza intent. For more information, see
how-it-works.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_enableModelImprovements">enableModelImprovements</code></td>
<td><p>Set to <code>true</code> to enable access to natural language
understanding improvements.</p>
<p>When you set the <code>enableModelImprovements</code> parameter to
<code>true</code> you can use the
<code>nluIntentConfidenceThreshold</code> parameter to configure
confidence scores. For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html">Confidence
Scores</a>.</p>
<p>You can only set the <code>enableModelImprovements</code> parameter
in certain Regions. If you set the parameter to <code>true</code>, your
bot has access to accuracy improvements.</p>
<p>The Regions where you can set the
<code>enableModelImprovements</code> parameter to <code>true</code>
are:</p>
<ul>
<li><p>US East (N. Virginia) (us-east-1)</p></li>
<li><p>US West (Oregon) (us-west-2)</p></li>
<li><p>Asia Pacific (Sydney) (ap-southeast-2)</p></li>
<li><p>EU (Ireland) (eu-west-1)</p></li>
</ul>
<p>In other Regions, the <code>enableModelImprovements</code> parameter
is set to <code>true</code> by default. In these Regions setting the
parameter to <code>false</code> throws a
<code>ValidationException</code> exception.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_nluIntentConfidenceThreshold">nluIntentConfidenceThreshold</code></td>
<td><p>Determines the threshold where Amazon Lex will insert the
<code>AMAZON.FallbackIntent</code>,
<code>AMAZON.KendraSearchIntent</code>, or both when returning
alternative intents in a <a
href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a>
or <a
href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a>
response. <code>AMAZON.FallbackIntent</code> and
<code>AMAZON.KendraSearchIntent</code> are only inserted if they are
configured for the bot.</p>
<p>You must set the <code>enableModelImprovements</code> parameter to
<code>true</code> to use confidence scores in the following regions.</p>
<ul>
<li><p>US East (N. Virginia) (us-east-1)</p></li>
<li><p>US West (Oregon) (us-west-2)</p></li>
<li><p>Asia Pacific (Sydney) (ap-southeast-2)</p></li>
<li><p>EU (Ireland) (eu-west-1)</p></li>
</ul>
<p>In other Regions, the <code>enableModelImprovements</code> parameter
is set to <code>true</code> by default.</p>
<p>For example, suppose a bot is configured with the confidence
threshold of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex
returns three alternative intents with the following confidence scores:
IntentA (0.70), IntentB (0.60), IntentC (0.50). The response from the
<code>PostText</code> operation would be:</p>
<ul>
<li><p>AMAZON.FallbackIntent</p></li>
<li><p>IntentA</p></li>
<li><p>IntentB</p></li>
<li><p>IntentC</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_clarificationPrompt">clarificationPrompt</code></td>
<td><p>When Amazon Lex doesn't understand the user's intent, it uses
this message to get clarification. To specify how many times Amazon Lex
should repeat the clarification prompt, use the <code>maxAttempts</code>
field. If Amazon Lex still doesn't understand, it sends the message in
the <code>abortStatement</code> field.</p>
<p>When you create a clarification prompt, make sure that it suggests
the correct response from the user. for example, for a bot that orders
pizza and drinks, you might create this clarification prompt: "What
would you like to do? You can say 'Order a pizza' or 'Order a
drink.'"</p>
<p>If you have defined a fallback intent, it will be invoked if the
clarification prompt is repeated the number of times defined in the
<code>maxAttempts</code> field. For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">AMAZON.FallbackIntent</a>.</p>
<p>If you don't define a clarification prompt, at runtime Amazon Lex
will return a 400 Bad Request exception in three cases:</p>
<ul>
<li><p>Follow-up prompt - When the user responds to a follow-up prompt
but does not provide an intent. For example, in response to a follow-up
prompt that says "Would you like anything else today?" the user says
"Yes." Amazon Lex will return a 400 Bad Request exception because it
does not have a clarification prompt to send to the user to get an
intent.</p></li>
<li><p>Lambda function - When using a Lambda function, you return an
<code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a
clarification prompt to get an intent from the user, it returns a 400
Bad Request exception.</p></li>
<li><p>PutSession operation - When using the <code>PutSession</code>
operation, you send an <code>ElicitIntent</code> dialog type. Since
Amazon Lex does not have a clarification prompt to get an intent from
the user, it returns a 400 Bad Request exception.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_abortStatement">abortStatement</code></td>
<td><p>When Amazon Lex can't understand the user's input in context, it
tries to elicit the information a few times. After that, Amazon Lex
sends the message defined in <code>abortStatement</code> to the user,
and then cancels the conversation. To set the number of retries, use the
<code>valueElicitationPrompt</code> field for the slot type.</p>
<p>For example, in a pizza ordering bot, Amazon Lex might ask a user
"What type of crust would you like?" If the user's response is not one
of the expected responses (for example, "thin crust, "deep dish," etc.),
Amazon Lex tries to elicit a correct response a few more times.</p>
<p>For example, in a pizza ordering application, <code>OrderPizza</code>
might be one of the intents. This intent might require the
<code>CrustType</code> slot. You specify the
<code>valueElicitationPrompt</code> field when you create the
<code>CrustType</code> slot.</p>
<p>If you have defined a fallback intent the cancel statement will not
be sent to the user, the fallback intent is used instead. For more
information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">AMAZON.FallbackIntent</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_idleSessionTTLInSeconds">idleSessionTTLInSeconds</code></td>
<td><p>The maximum time in seconds that Amazon Lex retains the data
gathered in a conversation.</p>
<p>A user interaction session remains active for the amount of time
specified. If no conversation occurs during this time, the session
expires and Amazon Lex deletes any data provided before the timeout.</p>
<p>For example, suppose that a user chooses the OrderPizza intent, but
gets sidetracked halfway through placing an order. If the user doesn't
complete the order within the specified time, Amazon Lex discards the
slot information that it gathered, and the user must start over.</p>
<p>If you don't include the <code>idleSessionTTLInSeconds</code> element
in a <code>put_bot</code> operation request, Amazon Lex uses the default
value. This is also true if the request replaces an existing bot.</p>
<p>The default is 300 seconds (5 minutes).</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_voiceId">voiceId</code></td>
<td><p>The Amazon Polly voice ID that you want Amazon Lex to use for
voice interactions with the user. The locale configured for the voice
must match the locale of the bot. For more information, see <a
href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Voices
in Amazon Polly</a> in the <em>Amazon Polly Developer
Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_checksum">checksum</code></td>
<td><p>Identifies a specific revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version.</p>
<p>When you create a new bot, leave the <code>checksum</code> field
blank. If you specify a checksum you get a
<code>BadRequestException</code> exception.</p>
<p>When you want to update a bot, set the <code>checksum</code> field to
the checksum of the most recent revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version. If you don't specify
the <code> checksum</code> field, or if the checksum does not match the
<code style="white-space: pre;">⁠$LATEST⁠</code> version, you get a
<code>PreconditionFailedException</code> exception.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_processBehavior">processBehavior</code></td>
<td><p>If you set the <code>processBehavior</code> element to
<code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If
you set the element to <code>SAVE</code> Amazon Lex saves the bot, but
doesn't build it.</p>
<p>If you don't specify this value, the default value is
<code>BUILD</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_locale">locale</code></td>
<td><p>[required] Specifies the target locale for the bot. Any intent
used in the bot must be compatible with the locale of the bot.</p>
<p>The default is <code>en-US</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_childDirected">childDirected</code></td>
<td><p>[required] For each Amazon Lex bot created with the Amazon Lex
Model Building Service, you must specify whether your use of Amazon Lex
is related to a website, program, or other application that is directed
or targeted, in whole or in part, to children under age 13 and subject
to the Children's Online Privacy Protection Act (COPPA) by specifying
<code>true</code> or <code>false</code> in the
<code>childDirected</code> field. By specifying <code>true</code> in the
<code>childDirected</code> field, you confirm that your use of Amazon
Lex <strong>is</strong> related to a website, program, or other
application that is directed or targeted, in whole or in part, to
children under age 13 and subject to COPPA. By specifying
<code>false</code> in the <code>childDirected</code> field, you confirm
that your use of Amazon Lex <strong>is not</strong> related to a
website, program, or other application that is directed or targeted, in
whole or in part, to children under age 13 and subject to COPPA. You may
not specify a default value for the <code>childDirected</code> field
that does not accurately reflect whether your use of Amazon Lex is
related to a website, program, or other application that is directed or
targeted, in whole or in part, to children under age 13 and subject to
COPPA.</p>
<p>If your use of Amazon Lex relates to a website, program, or other
application that is directed in whole or in part, to children under age
13, you must obtain any required verifiable parental consent under
COPPA. For information regarding the use of Amazon Lex in connection
with websites, programs, or other applications that are directed or
targeted, in whole or in part, to children under age 13, see the <a
href="https://aws.amazon.com/lex/faqs/#data-security">Amazon Lex
FAQ.</a></p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_bot_:_detectSentiment">detectSentiment</code></td>
<td><p>When set to <code>true</code> user utterances are sent to Amazon
Comprehend for sentiment analysis. If you don't specify
<code>detectSentiment</code>, the default is
<code>false</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_bot_:_createVersion">createVersion</code></td>
<td><p>When set to <code>true</code> a new numbered version of the bot
is created. This is the same as calling the
<code>create_bot_version</code> operation. If you don't specify
<code>createVersion</code>, the default is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code id="lexmodelbuildingservice_put_bot_:_tags">tags</code></td>
<td><p>A list of tags to add to the bot. You can only add tags when you
create a bot, you can't use the <code>put_bot</code> operation to update
the tags on a bot. To update tags, use the <code>tag_resource</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      intents = list(
        list(
          intentName = "string",
          intentVersion = "string"
        )
      ),
      enableModelImprovements = TRUE|FALSE,
      nluIntentConfidenceThreshold = 123.0,
      clarificationPrompt = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        maxAttempts = 123,
        responseCard = "string"
      ),
      abortStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      status = "BUILDING"|"READY"|"READY_BASIC_TESTING"|"FAILED"|"NOT_BUILT",
      failureReason = "string",
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      idleSessionTTLInSeconds = 123,
      voiceId = "string",
      checksum = "string",
      version = "string",
      locale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      childDirected = TRUE|FALSE,
      createVersion = TRUE|FALSE,
      detectSentiment = TRUE|FALSE,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Request syntax

    svc$put_bot(
      name = "string",
      description = "string",
      intents = list(
        list(
          intentName = "string",
          intentVersion = "string"
        )
      ),
      enableModelImprovements = TRUE|FALSE,
      nluIntentConfidenceThreshold = 123.0,
      clarificationPrompt = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        maxAttempts = 123,
        responseCard = "string"
      ),
      abortStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      idleSessionTTLInSeconds = 123,
      voiceId = "string",
      checksum = "string",
      processBehavior = "SAVE"|"BUILD",
      locale = "de-DE"|"en-AU"|"en-GB"|"en-IN"|"en-US"|"es-419"|"es-ES"|"es-US"|"fr-FR"|"fr-CA"|"it-IT"|"ja-JP"|"ko-KR",
      childDirected = TRUE|FALSE,
      detectSentiment = TRUE|FALSE,
      createVersion = TRUE|FALSE,
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # This example shows how to create a bot for ordering pizzas.
    svc$put_bot(
      name = "DocOrderPizzaBot",
      abortStatement = list(
        messages = list(
          list(
            content = "I don't understand. Can you try again?",
            contentType = "PlainText"
          ),
          list(
            content = "I'm sorry, I don't understand.",
            contentType = "PlainText"
          )
        )
      ),
      childDirected = TRUE,
      clarificationPrompt = list(
        maxAttempts = 1L,
        messages = list(
          list(
            content = "I'm sorry, I didn't hear that. Can you repeat what you just said?",
            contentType = "PlainText"
          ),
          list(
            content = "Can you say that again?",
            contentType = "PlainText"
          )
        )
      ),
      description = "Orders a pizza from a local pizzeria.",
      idleSessionTTLInSeconds = 300L,
      intents = list(
        list(
          intentName = "DocOrderPizza",
          intentVersion = "$LATEST"
        )
      ),
      locale = "en-US",
      processBehavior = "SAVE"
    )

    ## End(Not run)
