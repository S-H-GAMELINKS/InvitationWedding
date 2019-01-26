<template>
    <div class="container">
        <h1>Invitation Wedding Form</h1>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">氏名</span>
            </div>
            <input type="text" class="form-control" v-model="name"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">フリガナ</span>
            </div>
            <input type="text" class="form-control" v-model="name_furi"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">出欠</span>
            </div>
            <input type="checkbox" class="form-control" v-model="presence"> 
        </div>
        
        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">住所</span>
            </div>
            <input type="text" class="form-control" v-model="address"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">メールアドレス</span>
            </div>
            <input type="text" class="form-control" v-model="mail"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">電話番号</span>
            </div>
            <input type="text" class="form-control" v-model="tel"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">アレルギーなど</span>
            </div>
            <input type="text" class="form-control" v-model="allergy"> 
        </div>

        <div class="input-group">
            <div class="input-group-append">
                <span class="input-group-text">備考</span>
            </div>
            <input type="text" class="form-control" v-model="content"> 
        </div>
    </div>
</template>

<script>
export default {
    data: function() {
        return {
            name: "",
            name_furi: "",
            presence: false,
            address: "",
            mail: "",
            tel: "",
            allergy: "",
            content: ""
        }
    }

}
</script>