<template>
    <div>

        <q-card-section class="text-white text-h3 text-center bg-primary full-width q-py-md">
            ЧАСТО ЗАДАВАЕМЫЕ ВОПРОСЫ
        </q-card-section>
        <div class="q-pa-md row text-h6">
            <div class="chat_message">
                <q-chat-message
                :text="['Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad nam molestiae dignissimos harum cumque, temporibus facere velit neque placeat explicabo?']"
                text-color="white"
                bg-color="primary"
                class="q-my-xl"
                />
        <q-chat-message
        :text="['dignissimos harum cumque, temporibus facere velit neque placeat explicabo']"
        sent
        class="bg_message"
        />
    </div>
    </div>
    <div class="q-pa-md row text-h6 justify-end">
        <div class="chat_message">
            <q-chat-message
            :text="['Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad nam molestiae dignissimos harum cumque, temporibus facere velit neque placeat explicabo?']"
            text-color="white"
            bg-color="primary"
            class="q-my-xl"
            />
            <q-chat-message
            :text="['dignissimos harum cumque, temporibus facere velit neque placeat explicabo']"
            sent
            class="bg_message"
            />
        </div>
    </div>
    <div class="q-pa-md row text-h6">
        <div class="chat_message">
            <q-chat-message
            :text="['Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad nam molestiae dignissimos harum cumque, temporibus facere velit neque placeat explicabo?']"
            text-color="white"
            bg-color="primary"
            class="q-my-xl"
            />
            <q-chat-message
            :text="['dignissimos harum cumque, temporibus facere velit neque placeat explicabo']"
            sent
            class="bg_message"
            />
        </div>
    </div>
    <div class="q-pa-md row text-h6 justify-end">
        <div class="chat_message">
            <q-chat-message
            :text="['Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad nam molestiae dignissimos harum cumque, temporibus facere velit neque placeat explicabo?']"
            text-color="white"
            bg-color="primary"
            class="q-my-xl"
            />
            <q-chat-message
            :text="['dignissimos harum cumque, temporibus facere velit neque placeat explicabo']"
          sent
          class="bg_message"
          />
        </div>
    </div>
    <div style="max-width: 1000px;" class="q-mx-auto">
        <q-img src="Chavo_img.svg"/>
    </div>
</div>
</template>

<style>
.chat_message{
max-width: 600px;
}
.bg_message{
    background-color: #EEEEEE;
}
.q-message-text{
    padding: 20px;
} 
</style>