<!-- Modal contact -->
<div id="contact-modal" class="position-fixed top-0 w-100 end-0 h-100 start-0 p-4 bg-white" style="z-index: 101; overflow-x: hidden; overflow-y: auto; display:none;">
    <div class="position-fixed top-0 end-0">
        <div id="contact-close-modal" class="p-3 d-flex align-items-center justify-content-center" style="cursor: pointer;">
            <span class="iconify text-black" data-icon="ci:close-md" style="width: 3em; height: 3em;"></span>
        </div>
    </div>
    <div class="container">
        <div class="text-black">
            <h3 class="text-semibig text-upppercase">Contact Us</h3>
            <div class="rounded-4 bg-light overflow-hidden bg-secondary">
                <div class="d-flex align-items-center gap-3 p-3 bg-gold">
                    <img src="{{Voyager::image(setting('popup.pp'))}}" alt="Admin Contact" class="rounded-circle" style="width: 4em; height: 4em; object-fit: cover;">
                    <div>
                        <div class="fw-bold fs-5 text-white">{{setting('popup.name')}}</div>
                        <p class="mb-0 text-white fst-italic fs-6">biasa membalas dalam < 1jam</p>
                    </div>
                </div>
                <div class="p-3 d-flex flex-column justify-content-end pt-5 mt-5" style="min-height: 20em;">
                    <div class="d-flex flex-column align-items-start gap-3">
                        @php
                            $text = setting('popup.chats');
                            $textArray = explode("|", $text);
                            // Filter teks yang memiliki lebih dari 3 huruf
                            $filteredArray = array_filter($textArray, function($item) {
                                return strlen(trim($item)) > 3;
                            });
                            // Menghapus spasi di awal dan akhir dari setiap elemen
                            $chats = array_map('trim', $filteredArray);
                        @endphp
                        @foreach ($chats as $chat)
                        <div class="speech-bubble p-3 d-inline-block">
                            <div>{{$chat}}</div>
                        </div>
                        @endforeach 
                        <form action="{{route('contact')}}" method="POST" class="d-flex flex-column w-100 align-items-start gap-3">
                            @csrf
                            <div class="speech-bubble p-3 d-inline-block">
                                <div>{{setting('popup.fname')}}</div>
                                <div><input name="name" type="text" placeholder="Nama Kamu" class="form-control w-100 my-2" required></div>
                            </div>
                            <div class="speech-bubble p-3 d-inline-block">
                                <div>{{setting('popup.femail')}}</div>
                                <div><input name="email" type="email" placeholder="" class="form-control w-100 my-2" required></div>
                            </div>
                            <div class="speech-bubble p-3 d-inline-block">
                                <div>{{setting('popup.fno')}}</div>
                                <div><input name="no" type="number" placeholder="" class="form-control w-100 my-2" required></div>
                            </div>
                            <div class="w-100 d-flex align-items-center rounded-4 p-3 gap-3 bg-gold">
                                <div class="d-inline-block w-100">
                                    <div>
                                        <textarea name="messages" id="" cols="30" rows="10" placeholder="Tulis pesan kamu..." class="form-control border-0" required></textarea>
                                    </div>
                                </div>
                                <button type="submit" class="btn d-flex align-items-center justify-content-center text-white">
                                    <span class="iconify" data-icon="file-icons:telegram" style="width: 3em;height: 3em;"></span>
                                </button>
                            </div>
                        </form>
                        
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</div>
<div id="contact" class="d-inline-block position-fixed bottom-0 end-0 m-3" style="z-index: 100;cursor:pointer;">
    <div class="d-inline-flex justify-content-center align-items-center p-2 bg-gold rounded-circle">
        <span class="iconify text-white" data-icon="fluent:chat-32-filled" style="width: 2.5em; height: 2.5em;"></span>
    </div>
</div>