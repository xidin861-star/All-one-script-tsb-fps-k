loadstring(game:HttpGet("https://raw.githubusercontent.com/xidin861-star/Script-tsb-fps-v2-boots/refs/heads/main/Script.lua"))()

task.wait(2)

-- 🔥 FORCE FPS BOOST REAL

local Lighting = game:GetService("Lighting")

-- 🌇 เวลา 17:50
Lighting.ClockTime = 17.5

-- ✨ สว่าง + ปิดเงา
Lighting.Brightness = 3
Lighting.GlobalShadows = false
Lighting.FogEnd = 100000

-- 🧱 โลกดินน้ำมัน + ลบของ
for _,v in pairs(game:GetDescendants()) do
    
    -- 💥 ลบเอฟเฟค
    if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Explosion") then
        v:Destroy()
    end
    
    -- 🖼 ลบ texture / decal
    if v:IsA("Decal") or v:IsA("Texture") then
        v:Destroy()
    end
    
    -- 🌳 ปรับแมพ (ไม่ลบกำแพง)
    if v:IsA("BasePart") then
        if not v.Name:lower():find("wall") then
            v.Material = Enum.Material.SmoothPlastic
            v.Reflectance = 0
            v.CastShadow = false
        end
    end
    
    -- 🎬 ลบ animation หนักๆ
    if v:IsA("AnimationController") or v:IsA("Animator") then
        for _,track in pairs(v:GetPlayingAnimationTracks()) do
            track:Stop()
        end
    end
end

-- 🔄 กันเกมรีเซ็ตค่า (สำคัญ)
task.spawn(function()
    while true do
        task.wait(3)
        Lighting.ClockTime = 17.5
        Lighting.GlobalShadows = false
    end
end)

print("FPS BOOST REAL LOADED ✅")
