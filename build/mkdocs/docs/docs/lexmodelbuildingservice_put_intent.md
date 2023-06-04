<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelbuildingservice_put_intent</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an intent or replaces an existing intent

### Description

Creates an intent or replaces an existing intent.

To define the interaction between the user and your bot, you use one or
more intents. For a pizza ordering bot, for example, you would create an
`OrderPizza` intent.

To create an intent or replace an existing intent, you must provide the
following:

-   Intent name. For example, `OrderPizza`.

-   Sample utterances. For example, "Can I order a pizza, please." and
    "I want to order a pizza."

-   Information to be gathered. You specify slot types for the
    information that your bot will request from the user. You can
    specify standard slot types, such as a date or a time, or custom
    slot types such as the size and crust of a pizza.

-   How the intent will be fulfilled. You can provide a Lambda function
    or configure the intent to return the intent information to the
    client application. If you use a Lambda function, when all of the
    intent information is available, Amazon Lex invokes your Lambda
    function. If you configure your intent to return the intent
    information to the client application.

You can specify other optional information in the request, such as:

-   A confirmation prompt to ask the user to confirm an intent. For
    example, "Shall I order your pizza?"

-   A conclusion statement to send to the user after the intent has been
    fulfilled. For example, "I placed your pizza order."

-   A follow-up prompt that asks the user for additional activity. For
    example, asking "Do you want to order a drink with your pizza?"

If you specify an existing intent name to update the intent, Amazon Lex
replaces the values in the `⁠$LATEST⁠` version of the intent with the
values in the request. Amazon Lex removes fields that you don't provide
in the request. If you don't specify the required fields, Amazon Lex
throws an exception. When you update the `⁠$LATEST⁠` version of an intent,
the `status` field of any bot that uses the `⁠$LATEST⁠` version of the
intent is set to `NOT_BUILT`.

For more information, see how-it-works.

This operation requires permissions for the `lex:PutIntent` action.

### Usage

    lexmodelbuildingservice_put_intent(name, description, slots,
      sampleUtterances, confirmationPrompt, rejectionStatement,
      followUpPrompt, conclusionStatement, dialogCodeHook,
      fulfillmentActivity, parentIntentSignature, checksum, createVersion,
      kendraConfiguration, inputContexts, outputContexts)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_name">name</code></td>
<td><p>[required] The name of the intent. The name is <em>not</em> case
sensitive.</p>
<p>The name can't match a built-in intent name, or a built-in intent
name with "AMAZON." removed. For example, because there is a built-in
intent called <code>AMAZON.HelpIntent</code>, you can't create a custom
intent called <code>HelpIntent</code>.</p>
<p>For a list of built-in intents, see <a
href="https://developer.amazon.com/en-US/docs/alexa/custom-skills/standard-built-in-intents.html">Standard
Built-in Intents</a> in the <em>Alexa Skills Kit</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_description">description</code></td>
<td><p>A description of the intent.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_slots">slots</code></td>
<td><p>An array of intent slots. At runtime, Amazon Lex elicits required
slot values from the user using prompts defined in the slots. For more
information, see how-it-works.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_sampleUtterances">sampleUtterances</code></td>
<td><p>An array of utterances (strings) that a user might say to signal
the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
{PizzaSize} pizzas".</p>
<p>In each utterance, a slot name is enclosed in curly braces.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_confirmationPrompt">confirmationPrompt</code></td>
<td><p>Prompts the user to confirm the intent. This question should have
a yes or no answer.</p>
<p>Amazon Lex uses this prompt to ensure that the user acknowledges that
the intent is ready for fulfillment. For example, with the
<code>OrderPizza</code> intent, you might want to confirm that the order
is correct before placing it. For other intents, such as intents that
simply respond to user questions, you might not need to ask the user for
confirmation before providing the information.</p>
<p>You you must provide both the <code>rejectionStatement</code> and the
<code>confirmationPrompt</code>, or neither.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_rejectionStatement">rejectionStatement</code></td>
<td><p>When the user answers "no" to the question defined in
<code>confirmationPrompt</code>, Amazon Lex responds with this statement
to acknowledge that the intent was canceled.</p>
<p>You must provide both the <code>rejectionStatement</code> and the
<code>confirmationPrompt</code>, or neither.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_followUpPrompt">followUpPrompt</code></td>
<td><p>Amazon Lex uses this prompt to solicit additional activity after
fulfilling an intent. For example, after the <code>OrderPizza</code>
intent is fulfilled, you might prompt the user to order a drink.</p>
<p>The action that Amazon Lex takes depends on the user's response, as
follows:</p>
<ul>
<li><p>If the user says "Yes" it responds with the clarification prompt
that is configured for the bot.</p></li>
<li><p>if the user says "Yes" and continues with an utterance that
triggers an intent it starts a conversation for the intent.</p></li>
<li><p>If the user says "No" it responds with the rejection statement
configured for the the follow-up prompt.</p></li>
<li><p>If it doesn't recognize the utterance it repeats the follow-up
prompt again.</p></li>
</ul>
<p>The <code>followUpPrompt</code> field and the
<code>conclusionStatement</code> field are mutually exclusive. You can
specify only one.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_conclusionStatement">conclusionStatement</code></td>
<td><p>The statement that you want Amazon Lex to convey to the user
after the intent is successfully fulfilled by the Lambda function.</p>
<p>This element is relevant only if you provide a Lambda function in the
<code>fulfillmentActivity</code>. If you return the intent to the client
application, you can't specify this element.</p>
<p>The <code>followUpPrompt</code> and <code>conclusionStatement</code>
are mutually exclusive. You can specify only one.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_dialogCodeHook">dialogCodeHook</code></td>
<td><p>Specifies a Lambda function to invoke for each user input. You
can invoke this Lambda function to personalize user interaction.</p>
<p>For example, suppose your bot determines that the user is John. Your
Lambda function might retrieve John's information from a backend
database and prepopulate some of the values. For example, if you find
that John is gluten intolerant, you might set the corresponding intent
slot, <code>GlutenIntolerant</code>, to true. You might find John's
phone number and set the corresponding session attribute.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_fulfillmentActivity">fulfillmentActivity</code></td>
<td><p>Required. Describes how the intent is fulfilled. For example,
after a user provides all of the information for a pizza order,
<code>fulfillmentActivity</code> defines how the bot places an order
with a local pizza store.</p>
<p>You might configure Amazon Lex to return all of the intent
information to the client application, or direct it to invoke a Lambda
function that can process the intent (for example, place an order with a
pizzeria).</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_parentIntentSignature">parentIntentSignature</code></td>
<td><p>A unique identifier for the built-in intent to base this intent
on. To find the signature for an intent, see <a
href="https://developer.amazon.com/en-US/docs/alexa/custom-skills/standard-built-in-intents.html">Standard
Built-in Intents</a> in the <em>Alexa Skills Kit</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_checksum">checksum</code></td>
<td><p>Identifies a specific revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version.</p>
<p>When you create a new intent, leave the <code>checksum</code> field
blank. If you specify a checksum you get a
<code>BadRequestException</code> exception.</p>
<p>When you want to update a intent, set the <code>checksum</code> field
to the checksum of the most recent revision of the <code
style="white-space: pre;">⁠$LATEST⁠</code> version. If you don't specify
the <code> checksum</code> field, or if the checksum does not match the
<code style="white-space: pre;">⁠$LATEST⁠</code> version, you get a
<code>PreconditionFailedException</code> exception.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_createVersion">createVersion</code></td>
<td><p>When set to <code>true</code> a new numbered version of the
intent is created. This is the same as calling the
<code>create_intent_version</code> operation. If you do not specify
<code>createVersion</code>, the default is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_kendraConfiguration">kendraConfiguration</code></td>
<td><p>Configuration information required to use the
<code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
Kendra index. For more information, see <a
href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html">AMAZON.KendraSearchIntent</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelbuildingservice_put_intent_:_inputContexts">inputContexts</code></td>
<td><p>An array of <code>InputContext</code> objects that lists the
contexts that must be active for Amazon Lex to choose the intent in a
conversation with the user.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelbuildingservice_put_intent_:_outputContexts">outputContexts</code></td>
<td><p>An array of <code>OutputContext</code> objects that lists the
contexts that the intent activates when the intent is
fulfilled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      name = "string",
      description = "string",
      slots = list(
        list(
          name = "string",
          description = "string",
          slotConstraint = "Required"|"Optional",
          slotType = "string",
          slotTypeVersion = "string",
          valueElicitationPrompt = list(
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
          priority = 123,
          sampleUtterances = list(
            "string"
          ),
          responseCard = "string",
          obfuscationSetting = "NONE"|"DEFAULT_OBFUSCATION",
          defaultValueSpec = list(
            defaultValueList = list(
              list(
                defaultValue = "string"
              )
            )
          )
        )
      ),
      sampleUtterances = list(
        "string"
      ),
      confirmationPrompt = list(
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
      rejectionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      followUpPrompt = list(
        prompt = list(
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
        rejectionStatement = list(
          messages = list(
            list(
              contentType = "PlainText"|"SSML"|"CustomPayload",
              content = "string",
              groupNumber = 123
            )
          ),
          responseCard = "string"
        )
      ),
      conclusionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      dialogCodeHook = list(
        uri = "string",
        messageVersion = "string"
      ),
      fulfillmentActivity = list(
        type = "ReturnIntent"|"CodeHook",
        codeHook = list(
          uri = "string",
          messageVersion = "string"
        )
      ),
      parentIntentSignature = "string",
      lastUpdatedDate = as.POSIXct(
        "2015-01-01"
      ),
      createdDate = as.POSIXct(
        "2015-01-01"
      ),
      version = "string",
      checksum = "string",
      createVersion = TRUE|FALSE,
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterString = "string",
        role = "string"
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      )
    )

### Request syntax

    svc$put_intent(
      name = "string",
      description = "string",
      slots = list(
        list(
          name = "string",
          description = "string",
          slotConstraint = "Required"|"Optional",
          slotType = "string",
          slotTypeVersion = "string",
          valueElicitationPrompt = list(
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
          priority = 123,
          sampleUtterances = list(
            "string"
          ),
          responseCard = "string",
          obfuscationSetting = "NONE"|"DEFAULT_OBFUSCATION",
          defaultValueSpec = list(
            defaultValueList = list(
              list(
                defaultValue = "string"
              )
            )
          )
        )
      ),
      sampleUtterances = list(
        "string"
      ),
      confirmationPrompt = list(
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
      rejectionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      followUpPrompt = list(
        prompt = list(
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
        rejectionStatement = list(
          messages = list(
            list(
              contentType = "PlainText"|"SSML"|"CustomPayload",
              content = "string",
              groupNumber = 123
            )
          ),
          responseCard = "string"
        )
      ),
      conclusionStatement = list(
        messages = list(
          list(
            contentType = "PlainText"|"SSML"|"CustomPayload",
            content = "string",
            groupNumber = 123
          )
        ),
        responseCard = "string"
      ),
      dialogCodeHook = list(
        uri = "string",
        messageVersion = "string"
      ),
      fulfillmentActivity = list(
        type = "ReturnIntent"|"CodeHook",
        codeHook = list(
          uri = "string",
          messageVersion = "string"
        )
      ),
      parentIntentSignature = "string",
      checksum = "string",
      createVersion = TRUE|FALSE,
      kendraConfiguration = list(
        kendraIndex = "string",
        queryFilterString = "string",
        role = "string"
      ),
      inputContexts = list(
        list(
          name = "string"
        )
      ),
      outputContexts = list(
        list(
          name = "string",
          timeToLiveInSeconds = 123,
          turnsToLive = 123
        )
      )
    )

### Examples

    ## Not run: 
    # This example shows how to create an intent for ordering pizzas.
    svc$put_intent(
      name = "DocOrderPizza",
      conclusionStatement = list(
        messages = list(
          list(
            content = "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
            contentType = "PlainText"
          ),
          list(
            content = "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
            contentType = "PlainText"
          )
        ),
        responseCard = "foo"
      ),
      confirmationPrompt = list(
        maxAttempts = 1L,
        messages = list(
          list(
            content = "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
            contentType = "PlainText"
          )
        )
      ),
      description = "Order a pizza from a local pizzeria.",
      fulfillmentActivity = list(
        type = "ReturnIntent"
      ),
      rejectionStatement = list(
        messages = list(
          list(
            content = "Ok, I'll cancel your order.",
            contentType = "PlainText"
          ),
          list(
            content = "I cancelled your order.",
            contentType = "PlainText"
          )
        )
      ),
      sampleUtterances = list(
        "Order me a pizza.",
        "Order me a {Type} pizza.",
        "I want a {Crust} crust {Type} pizza",
        "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
      ),
      slots = list(
        list(
          name = "Type",
          description = "The type of pizza to order.",
          priority = 1L,
          sampleUtterances = list(
            "Get me a {Type} pizza.",
            "A {Type} pizza please.",
            "I'd like a {Type} pizza."
          ),
          slotConstraint = "Required",
          slotType = "DocPizzaType",
          slotTypeVersion = "$LATEST",
          valueElicitationPrompt = list(
            maxAttempts = 1L,
            messages = list(
              list(
                content = "What type of pizza would you like?",
                contentType = "PlainText"
              ),
              list(
                content = "Vegie or cheese pizza?",
                contentType = "PlainText"
              ),
              list(
                content = "I can get you a vegie or a cheese pizza.",
                contentType = "PlainText"
              )
            )
          )
        ),
        list(
          name = "Crust",
          description = "The type of pizza crust to order.",
          priority = 2L,
          sampleUtterances = list(
            "Make it a {Crust} crust.",
            "I'd like a {Crust} crust."
          ),
          slotConstraint = "Required",
          slotType = "DocPizzaCrustType",
          slotTypeVersion = "$LATEST",
          valueElicitationPrompt = list(
            maxAttempts = 1L,
            messages = list(
              list(
                content = "What type of crust would you like?",
                contentType = "PlainText"
              ),
              list(
                content = "Thick or thin crust?",
                contentType = "PlainText"
              )
            )
          )
        ),
        list(
          name = "Sauce",
          description = "The type of sauce to use on the pizza.",
          priority = 3L,
          sampleUtterances = list(
            "Make it {Sauce} sauce.",
            "I'd like {Sauce} sauce."
          ),
          slotConstraint = "Required",
          slotType = "DocPizzaSauceType",
          slotTypeVersion = "$LATEST",
          valueElicitationPrompt = list(
            maxAttempts = 1L,
            messages = list(
              list(
                content = "White or red sauce?",
                contentType = "PlainText"
              ),
              list(
                content = "Garlic or tomato sauce?",
                contentType = "PlainText"
              )
            )
          )
        )
      )
    )

    ## End(Not run)
