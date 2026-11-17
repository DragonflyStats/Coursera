## Microsoft: Getting Started with Generative AI in Azure

### Graded Quiz: Module 3 Evaluation

---

##### Question 1

A developer is explaining how a diffusion model creates an image of a "blue cat sitting on a red chair." They describe the initial stage of the process before any recognizable shapes appear. What is the fundamental starting point for a diffusion model's image generation process? Select the best answer.

* **A)** A latent space vector representing the core concepts of the prompt.
* **B)** An abstract feature map derived from the prompt's semantics.
* **C)** A random pattern of visual noise. **(Correct Answer)**
* **D)** A composite image created by averaging similar images from the training dataset.

> **Explainer:** Diffusion models begin the generative process from a completely random pattern of visual noise and iteratively denoise it over multiple steps to form the final image guided by the text prompt.

---

##### Question 2

A marketing team wants to generate an image for a campaign with a specific artistic style. Their prompt, "a person drinking coffee," produces a generic photo. How can they use the prompt to guide the model toward a "vintage comic book" style? Select the best answer.

* **A)** Generate multiple images using different random seeds until the desired style appears by chance.
* **B)** Include stylistic keywords like "pop art style, halftone dots, bold black outlines, vintage comic." **(Correct Answer)**
* **C)** Name a famous comic book artist in the prompt, such as "in the style of Jack Kirby."
* **D)** Describe the desired emotional tone, such as "a dramatic and nostalgic scene of a person drinking coffee."

> **Explainer:** Adding explicit descriptive style keywords (such as specific artistic techniques, linework descriptions, and art periods) directly guides the model's text encoder to shift the visual aesthetics toward the desired genre.

---

##### Question 3

An artist creates an image of a person holding a red apple. They decide they want the person to be holding a green pear instead. The rest of the image, including the person's pose and the background, is perfect. What is the most efficient technique to make this change? Select the best answer.

* **A)** Use inpainting on the apple and provide a new prompt for that area, such as "a green pear." **(Correct Answer)**
* **B)** Use an image-to-image function with the original picture as input and "green pear" as the new prompt.
* **C)** Use inpainting on the apple, but leave the prompt empty to let the AI fill it in contextually.
* **D)** Regenerate the entire image using the original seed and a modified prompt like "a person holding a green pear."

> **Explainer:** Inpainting allows you to isolate a specific region (masking the apple) and regenerate only that area using a modified prompt while keeping the rest of the composition intact.

---

##### Question 4

A content creator has a portrait-oriented (vertical) image but needs to use it as a wide banner for a website. This requires changing the aspect ratio by adding content to the left and right sides. Which diffusion model feature is designed for this purpose? Select the best answer.

* **A)** Using outpainting to extend the canvas horizontally. **(Correct Answer)**
* **B)** Using the inpainting tool on the left and right edges.
* **C)** Applying a style transfer filter.
* **D)** Regenerating the image with a wide aspect ratio setting.

> **Explainer:** Outpainting (or generative fill expansion) extends the existing canvas boundaries outward and seamlessly fills the newly added space to match the style and context of the original image.

---

##### Question 5

A designer is creating a promotional image for a coffee shop and uses the prompt, "A welcoming storefront with a sign that says 'The Daily Grind'." The generated image is beautiful, but the text on the sign is a series of garbled, nonsensical letters. What is the most likely reason for this common issue? Select the best answer.

* **A)** The prompt should have been simplified to just "coffee shop sign" to avoid confusing the model with specific, complex text instructions.
* **B)** The model's text encoder, which translates the prompt, is optimized for broad concepts, not for the precise spelling of individual words.
* **C)** The model's training data likely lacked sufficient examples of the specific phrase "The Daily Grind" to render it accurately.
* **D)** The model understands text as a visual texture or pattern, not as a system of letters with linguistic meaning. **(Correct Answer)**

> **Explainer:** Diffusion models process text prompts as visual semantics and graphical textures rather than spelling tokens through a linguistic writing system, which historically makes precise character rendering challenging.

---

##### Question 6

A user sets the guidance scale to a very high value. The resulting image follows the prompt perfectly but contains visual artifacts and oversaturated colors. What is the most likely trade-off the user is experiencing with a high guidance scale? Select the best answer.

* **A)** Increased detail in specific objects from the prompt, but a loss of overall compositional harmony.
* **B)** Better adherence to the prompt's subject, but weaker adherence to its stylistic instructions.
* **C)** Stronger prompt adherence but a significant increase in VRAM (video memory) usage.
* **D)** Stronger prompt adherence but potentially lower image quality or artifacts. **(Correct Answer)**

> **Explainer:** While increasing the guidance scale forces the model to follow the prompt more strictly, pushing it too high over-amplifies the conditioning features, leading to visual burn-in, artifacts, and oversaturation.

---

##### Question 7

A designer generates an image of a "red car on a street" and likes the exact angle and composition. They want to generate a new image of a "blue truck on a street" but keep the same overall layout and perspective. Which parameter must they keep the same as the original image to maintain this compositional consistency? Select the best answer.

* **A)** The number of sampling steps
* **B)** The guidance scale
* **C)** The prompt length
* **D)** The seed value **(Correct Answer)**

> **Explainer:** The initial random noise seed determines the structural layout, composition, and initial spatial distribution during the denoising process, making it essential for keeping layouts consistent.

---

##### Question 8

A user prompts for "a red car next to a blue house," but the model consistently generates a blue car next to a red house, ignoring the color assignments. What is the most effective way to correct this and enforce the specific details of the prompt? Select the best answer.

* **A)** Use inpainting to change the colors after the image is generated.
* **B)** Increase the number of sampling steps to give the model more refinement time to get the details right.
* **C)** Increase the guidance scale to make the model follow the prompt more strictly. **(Correct Answer)**
* **D)** Change the random seed and regenerate the image until the colors are correct.

> **Explainer:** Increasing the guidance scale forces the diffusion model to adhere more aggressively to the specific tokens and constraints specified in the prompt, helping resolve cross-attention attribute bleeding (like mixed-up colors).

---

##### Question 9

An artist generates an image of a knight in shining armor. The knight's pose and armor are perfect, but he is holding a modern smartphone. The artist wants to replace the smartphone with a sword and also change the image from a square format to a vertical poster by adding more of the castle background above and below the knight. What is the most effective approach to make both corrections while preserving the desirable parts of the image? Select the best answer.

* **A)** First, expand the canvas vertically, which will automatically correct the object in the knight's hand during the expansion process.
* **B)** Crop the knight from the original image and paste him onto a new, separately generated vertical background holding a sword.
* **C)** Use a localized edit to replace the smartphone with a sword, and then perform a separate operation to expand the canvas vertically. **(Correct Answer)**
* **D)** Regenerate the entire image with a prompt that specifies a sword and a vertical aspect ratio to fix both issues at once.

> **Explainer:** Combining localized inpainting (to change the smartphone to a sword) with subsequent outpainting operations allows you to handle edits sequentially while preserving the foundational composition.

---

##### Question 10

Two images are generated using the exact same prompt and parameters, except for a different initial noise seed. The resulting images are completely different in composition, but both match the prompt. What does this demonstrate about the role of the initial noise in the denoising process? Select the best answer.

* **A)** It provides the model with a random artistic style for the final image.
* **B)** It determines the potential level of detail and realism in the final image.
* **C)** It influences the model's ability to adhere to the prompt's specific details.
* **D)** It serves as the foundational blueprint for the final image's composition. **(Correct Answer)**

> **Explainer:** The initial noise matrix acts as the foundational structural blueprint or seed space that guides how the diffusion process shapes shapes, layouts, and compositions during generation.
