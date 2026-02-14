-- ⚡ UNIVERSAL INSTANT INTERACT ⚡
-- No more holding E/F – prompts fire instantly

local ProximityPromptService = game:GetService("ProximityPromptService")

-- Toggle (set false if you want to disable)
local instantInteractEnabled = true

-- Instantly fire any prompt when hold starts
ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt)
    if not instantInteractEnabled then return end
    
    -- Remove hold time & cooldown client-side
    prompt.HoldDuration = 0
    prompt.Enabled = true
    
    -- Fire it instantly
    fireproximityprompt(prompt)
end)

print("⚡ Instant Interact enabled – walk up to any E/F prompt and it will trigger instantly.")
